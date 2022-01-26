from matplotlib import pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd
import glob
import xlsxwriter
import os


data_pd = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\report_plots\\ink1_RS_sample.xlsx')
data = np.array(data_pd)
x = data[:, 0]
r = data[:, 1]
l = data[:, 2]
diff = data[:, 3]

viridis = cm.get_cmap('viridis', 4)
plt.plot(x, r, label='RCP', color=viridis(0), linewidth=2)
plt.plot(x, l, label='LCP', color=viridis(1), linewidth=2)
plt.plot(x, diff, label='CD$_R$', color=viridis(2), linewidth=2)

plt.xlabel("Wavelength [nm]", fontsize=14)
plt.ylabel("Reflectance [%]", fontsize=14)
plt.xlim([380, 600])
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.axhline(0, color='grey', linewidth=1, ls='dashed')

plt.savefig("reflectance ink 1 RS" + ".png")
