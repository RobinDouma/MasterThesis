from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib import rcParams as rc
import numpy as np
import glob
import xlsxwriter
import os

line_0 = [198, 140, 60, 99]
line_20 = [261, 253, 100, 250]
line_40 = [216, 99, 120, 253]
time = [50, 55, 60, 65]

viridis = cm.get_cmap('viridis', 4)
plt.scatter(time,  line_0, label='0 min', color=viridis(0), s=80)
plt.scatter(time,  line_20, label='20 min', color=viridis(1), s=80)
plt.scatter(time,  line_40, label='40 min', color=viridis(2), s=80)

plt.xlim([47.5, 67.5])
plt.ylim([50, 350])

plt.xlabel("Cure temperature [$^o$C]", fontsize=14)
plt.ylabel("Thickness [µm]", fontsize=11)
plt.xticks([50, 55, 60, 65], fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)

plt.savefig("thickness ink 1 time and temp" + ".png")