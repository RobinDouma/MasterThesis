from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib import rcParams as rc
import numpy as np
import glob
import xlsxwriter
import os

line_0 = [28.180907,	33.245311, 37.039477, 30.515093]
line_20 = [31.822679, 33.287411, 41.836201, 31.909719]
line_40 = [33.466438, 35.526282, 39.498875, 31.96378]
time = [50, 55, 60, 65]

viridis = cm.get_cmap('viridis', 4)
plt.scatter(time,  line_0, label='0 min', color=viridis(0), s=80)
plt.scatter(time,  line_20, label='20 min', color=viridis(1), s=80)
plt.scatter(time,  line_40, label='40 min', color=viridis(2), s=80)

plt.xlim([47.5, 67.5])
#plt.ylim([50, 300])

plt.xlabel("Cure temperature [$^o$C]", fontsize=14)
plt.ylabel("Reflectance [%]", fontsize=14)
plt.xticks([50, 55, 60, 65], fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.savefig("reflectance ink 1 time and temp" + ".png")