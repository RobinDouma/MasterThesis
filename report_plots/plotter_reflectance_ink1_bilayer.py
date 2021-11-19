from matplotlib import pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd
import glob
import xlsxwriter
import os


data_pd = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\report_plots\\ink1_bilayer.xlsx')
data = np.array(data_pd)
x = data[:, 0]
r1 = data[:, 1]
r4 = data[:, 2]
r1r4diff = data[:, 3]
r1UV = data[:, 4]
r4UV = data[:, 5]
r1UVdiff = data[:, 6]
r4UVdiff = data[:, 7]
r1r4difUVdiff = data[:, 8]
r1R = data[:, 9]
r1S = data[:, 10]
r1A = data[:, 11]
r4A = data[:, 12]
r1T = data[:, 13]
r4T = data[:, 14]


viridis = cm.get_cmap('viridis', 3)
#plt.plot(x, r1, label='Bilayer', color=viridis(0), linewidth=2)
#plt.plot(x, r4, label='Bottom', color=viridis(0), linewidth=2)
#plt.plot(x, r1r4diff, label='Difference layers', color=viridis(0), linewidth=2)
#plt.plot(x, r1UV, label='Bilayer UV', color=viridis(1), linewidth=2)
#plt.plot(x, r4UV, label='Bottom UV', color=viridis(1), linewidth=2)
#plt.plot(x, r1UVdiff, label='Difference bilayer UV', color=viridis(2), linewidth=2)
#plt.plot(x, r4UVdiff, label='Difference bottom UV', color=viridis(2), linewidth=2)
#plt.plot(x, r1r4difUVdiff, label='Difference layers & UV', color=viridis(1), linewidth=2)
#plt.plot(x, r1R, label='Bilayer RCP', color=viridis(0), linewidth=2)
#plt.plot(x, r1S, label='Bilayer LCP', color=viridis(1), linewidth=2)
plt.plot(x, r1A, label='Bilayer', color=viridis(0), linewidth=2)
plt.plot(x, r4A, label='Bottom', color=viridis(1), linewidth=2)
#plt.plot(x, r1T, label='Bilayer', color=viridis(0), linewidth=2)
#plt.plot(x, r4T, label='Bottom', color=viridis(1), linewidth=2)

plt.xlabel("Wavelength [nm]", fontsize=14)
plt.ylabel("Absorbance [-]", fontsize=14)
plt.xlim([350, 650])
#plt.ylim([0, 3])
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.axhline(0, color='grey', linewidth=1, ls='dashed')

plt.savefig("ink1 bilayer A" + ".png")
