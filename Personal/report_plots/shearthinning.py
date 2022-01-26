from matplotlib import pyplot as plt
from matplotlib import cm
from matplotlib import rcParams as rc
import numpy as np
import glob
import xlsxwriter
import os


x = np.arange(-6, 6, 0.1)
line = [-0.05 * np.tanh(i*0.7) for i in x]

viridis = cm.get_cmap('viridis', 2)
plt.plot(x, line, label='Trendline', color=viridis(0), linewidth=2)

plt.xlim([-6, 6])
plt.ylim([-0.08, 0.08])

plt.ylabel("Viscosity, log(η)", fontsize=14)
plt.xlabel("Shear rate, log(γ)", fontsize=14)
plt.xticks([], fontsize=14)
plt.yticks([], fontsize=14)
#plt.legend(fontsize=14)
plt.axvline(-2.5, color='grey', linewidth=1, ls='dashed')
plt.axvline(2.5, color='grey', linewidth=1, ls='dashed')
plt.savefig("shear thinning" + ".png")
