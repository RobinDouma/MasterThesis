from matplotlib import pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd
import glob
import xlsxwriter
import os


data_pd = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\report_plots\\ink1_RS_UV.xlsx')
data = np.array(data_pd)
x = data[:, 0]
after_R = data[:, 1]
before_R = data[:, 2]
after_L = data[:, 3]
before_L = data[:, 4]
diff_R = data[:, 5]
diff_L = data[:, 6]
diff = data[:, 7]

viridis = cm.get_cmap('viridis', 5)
#plt.plot(x, before_R, label='R$_R$', color=viridis(0), linewidth=2)
#plt.plot(x, after_R, label='R$_R$$_,$$_U$$_V$', color=viridis(1), linewidth=2)
plt.plot(x, before_L, label='R$_L$', color=viridis(0), linewidth=2)
plt.plot(x, after_L, label='R$_L$$_,$$_U$$_V$', color=viridis(1), linewidth=2)
#plt.plot(x, diff_R, label='ΔR$_R$$_,$$_U$$_V$', color=viridis(2), linewidth=2)
plt.plot(x, diff_L, label='ΔR$_L$$_,$$_U$$_V$', color=viridis(2), linewidth=2)
plt.plot(x, diff, label='ΔR$_U$$_V$', color=viridis(3), linewidth=2)

plt.xlabel("Wavelength [nm]", fontsize=14)
plt.ylabel("Reflectance [%]", fontsize=14)
plt.xlim([380, 600])
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14)
plt.axhline(0, color='grey', linewidth=1, ls='dashed')

plt.savefig("reflectance ink 1 UV L with overall change" + ".png")
