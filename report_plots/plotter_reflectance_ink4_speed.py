from matplotlib import pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd
import glob
import xlsxwriter
import os


data_pd = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\report_plots\\ink4_speed.xlsx')
data = np.array(data_pd)
x = data[:, 0]
r120 = data[:, 1]
r240 = data[:, 2]
r360 = data[:, 3]
r600 = data[:, 4]
r660 = data[:, 5]


viridis = cm.get_cmap('viridis', 6)
plt.plot(x, r120, label='120', color=viridis(0), linewidth=2)
plt.plot(x, r240, label='240', color=viridis(1), linewidth=2)
plt.plot(x, r360, label='360', color=viridis(2), linewidth=2)
plt.plot(x, r600, label='600', color=viridis(3), linewidth=2)
plt.plot(x, r660, label='660', color=viridis(4), linewidth=2)

plt.xlabel("Wavelength [nm]", fontsize=14)
plt.ylabel("Reflectance [%]", fontsize=14)
plt.xlim([350, 1000])
#plt.ylim([0, 3])
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.axhline(0, color='grey', linewidth=1, ls='dashed')

plt.savefig("ink4 speed" + ".png")
