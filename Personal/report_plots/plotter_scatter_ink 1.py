from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib import rcParams as rc
import numpy as np
import glob
import xlsxwriter
import os

line_0 = [2.560396, 1.580081, 0.933263, 0.979736]
line_20 = [1.625892, 0.874386, 0.726037, 1.23972]
line_40 = [1.754727, 1.940123, 0.93211, 1.237157]
time = [50, 55, 60, 65]

viridis = cm.get_cmap('viridis', 4)

plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
plt.scatter(time,  line_0, label='0 min', color=viridis(0), s=80)
plt.scatter(time,  line_20, label='20 min', color=viridis(1), s=80)
plt.scatter(time,  line_40, label='40 min', color=viridis(2), s=80)

plt.xlim([47.5, 67.5])
# plt.ylim([-10, 60])

plt.xlabel("Cure temperature [$^o$C]", fontsize=14)
plt.ylabel("Reflectance [%]", fontsize=14)
plt.xticks([50, 55, 60, 65], fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.savefig("reflectance at 800nm ink 1 time and temp2" + ".png")
