from matplotlib import pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd
import glob
import xlsxwriter
import os
from scipy.interpolate import make_interp_spline, BSpline


data_pd = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\report_plots\\azo.xlsx')
data_pdR = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\Random\\after uv.xlsx')
data = np.array(data_pd)

xR = data_pdR["Wavelength"]
diffR = data_pdR["post"] - data_pdR["pre"]
x = data[0:12, 0]
cis_Ax = data[0:12, 1]
trans_Ax = data[0:12, 2]
cis_Tx = data[0:12, 3]
trans_Tx = data[0:12, 4]
trans_A100 = data[0:12, 6]
cis_A100 = data[0:12, 5]
diffx = data[0:12, 7]
x2 = data[:, 8]
diff2 = data[:, 9]

# Make smooth curves
xnew = np.linspace(x.min(), x.max(), 200)
spl0 = make_interp_spline(x, cis_Ax, k=3)
cis_A = spl0(xnew)
spl0 = make_interp_spline(x, trans_Ax, k=3)
trans_A = spl0(xnew)
spl0 = make_interp_spline(x, cis_Tx, k=3)
cis_T = spl0(xnew)
spl0 = make_interp_spline(x, trans_Tx, k=3)
trans_T = spl0(xnew)
spl0 = make_interp_spline(x, diffx, k=3)
diff = spl0(xnew)
diff /= 4

viridis = cm.get_cmap('viridis', 4)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
#plt.plot(xnew, cis_A, label='A$_c$$_i$$_s$', color=viridis(0), linewidth=2)
#plt.plot(xnew, trans_A, label='A$_t$$_r$$_a$$_n$$_s$', color=viridis(1), linewidth=2)
#plt.plot(xnew, cis_T, label='T$_c$$_i$$_s$', color=viridis(0), linewidth=2)
#plt.plot(xnew, trans_T, label='T$_t$$_r$$_a$$_n$$_s$', color=viridis(1), linewidth=2)
#plt.plot(x, cis_A100, label='100*A$_c$$_i$$_s$', color=viridis(4), linewidth=2)
#plt.plot(x, trans_A100, label='100*T$_t$$_r$$_a$$_n$$_s$', color=viridis(5), linewidth=2)
plt.plot(xnew, diff, label='ΔT$_U$$_V$/4', color=viridis(0), linewidth=2)
plt.plot(xR, diffR, label='ΔR$_U$$_V$ ink 1', color=viridis(1), linewidth=2)
plt.plot(x2, diff2, label='ΔR$_U$$_V$ ink 2', color=viridis(2), linewidth=2)

plt.xlabel("Wavelength [nm]", fontsize=14)
plt.ylabel("Transmittance [a.u.]", fontsize=14)

plt.xlim([350, 600])
#plt.ylim([0, 1.1])
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.axhline(0, color='grey', linewidth=1, ls='dashed')
#plt.tight_layout()
plt.savefig("azo 4.2" + ".png")
