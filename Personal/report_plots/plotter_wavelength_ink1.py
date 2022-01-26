from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib import rcParams as rc
import numpy as np
import glob
import xlsxwriter
import os

line_0 = [420, 415, 412, 398]
line_20 = [417, 409, 411, 396]
line_40 = [418, 412, 409, 395]
time = [50, 55, 60, 65]

viridis = cm.get_cmap('viridis', 4)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
plt.scatter(time,  line_0, label='0 min', color=viridis(0), s=80)
plt.scatter(time,  line_20, label='20 min', color=viridis(1), s=80)
plt.scatter(time,  line_40, label='40 min', color=viridis(2), s=80)

plt.xlim([47.5, 67.5])
# plt.ylim([-10, 60])
plt.xlabel("T$_b$ [$^o$C]", fontsize=14)
plt.ylabel("λ$_m$$_a$$_x$ [nm]", fontsize=14)
plt.xticks([50, 55, 60, 65], fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)

plt.tight_layout()
plt.savefig("wavelength ink 1 time and temp" + ".png")
