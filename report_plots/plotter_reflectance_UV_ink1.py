from matplotlib import pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd
import glob
import xlsxwriter
import os


data_pd = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\report_plots\\ink1_UV.xlsx')
data = np.array(data_pd)
x = data[:, 0]
before = data[:, 2]
after = data[:, 1]
subtr = data[:, 3]

viridis = cm.get_cmap('viridis', 4)
plt.plot(x, before, label='R', color=viridis(0), linewidth=2)
plt.plot(x, after, label='R$_U$$_V$', color=viridis(1), linewidth=2)
plt.plot(x, subtr, label='ΔR$_U$$_V$', color=viridis(2), linewidth=2)

plt.xlabel("Wavelength [nm]", fontsize=14)
plt.ylabel("Reflectance [%]", fontsize=14)
plt.xlim([300, 800])
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.axhline(0, color='grey', linewidth=1, ls='dashed')

plt.savefig("reflectance ink 1 UV" + ".png")
