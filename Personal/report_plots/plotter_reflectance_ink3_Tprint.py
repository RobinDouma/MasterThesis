from matplotlib import pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd
import glob
import xlsxwriter
import os


data_pd = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\report_plots\\ink3_Tprint.xlsx')
data = np.array(data_pd)
x = data[:, 0]
good = data[:, 1]
above = data[:, 2]
below = data[:, 3]

viridis = cm.get_cmap('viridis', 4)
plt.plot(x, good, label='T$_N$$_I$', color=viridis(0), linewidth=2)
plt.plot(x, above, label='T$_N$$_I$ + 5°C', color=viridis(1), linewidth=2)
plt.plot(x, below, label='T$_N$$_I$ - 5°C', color=viridis(2), linewidth=2)

plt.xlabel("Wavelength [nm]", fontsize=14)
plt.ylabel("Reflectance [%]", fontsize=14)
#plt.xlim([380, 600])
#plt.ylim([0, 3])
plt.xticks(fontsize=14)
plt.yticks([], fontsize=14)
plt.legend(fontsize=14)
#plt.axhline(0, color='grey', linewidth=1, ls='dashed')

plt.savefig("ink 3 Tprint" + ".png")
