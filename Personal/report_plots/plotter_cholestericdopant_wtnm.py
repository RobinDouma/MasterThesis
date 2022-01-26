from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib import rcParams as rc
import numpy as np
import glob
import xlsxwriter
import os

line_0 = [535, 645, 805]
x = [7, 6, 5]
x_trend = [8, 7, 6, 5, 4]
line_trend = [-135 * i + 1471.7 for i in x_trend]

viridis = cm.get_cmap('viridis', 2)
plt.scatter(x,  line_0, label='Measured', color=viridis(0), s=80)
plt.plot(x_trend, line_trend, label='Trendline', color=viridis(0), linewidth=2)

plt.xlim([4, 8])
# plt.ylim([-10, 60])

plt.xlabel("Chiral dopant added [wt%]", fontsize=14)
plt.ylabel("Peak reflection wavelength [nm]", fontsize=14)
#plt.xticks([50, 55, 60, 65], fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.savefig("cholesteric dopant concentration vs nm sfd3131" + ".png")
