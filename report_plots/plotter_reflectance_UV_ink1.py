from matplotlib import pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd
import glob
import xlsxwriter
import os
from scipy.interpolate import make_interp_spline, BSpline


data_pd = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\report_plots\\ink1_UV.xlsx')
data = np.array(data_pd)
x2 = data[:, 0]
before = data[:, 2]
after = data[:, 1]
subtr = data[:, 3]

#x = data[0:12, 0]
#diffx = data[0:12, 1]

# Make smooth curves
#xnew = np.linspace(x.min(), x.max(), 200)
#spl0 = make_interp_spline(x, diffx, k=3)
#diff = spl0(xnew)
#diff /= 20

viridis = cm.get_cmap('viridis', 3)
plt.plot(x2, before, label='R', color=viridis(0), linewidth=2)
plt.plot(x2, after, label='R$_U$$_V$', color=viridis(1), linewidth=2)
#plt.plot(xnew, diff, label='ΔT$_U$$_V$/20', color=viridis(0), linewidth=2)
#plt.plot(x2, subtr, label='ΔR$_U$$_V$', color=viridis(1), linewidth=2)

plt.xlabel("Wavelength [nm]", fontsize=14)
plt.ylabel("Reflectance [%]", fontsize=14)
plt.xlim([350, 700])
#plt.ylim([-8, 4])
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.axhline(0, color='grey', linewidth=1, ls='dashed')

plt.savefig("reflectance ink 1 UV present" + ".png")
