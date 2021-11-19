from matplotlib import pyplot as plt
from matplotlib import cm
import numpy as np
import pandas as pd
import glob
import xlsxwriter
import os


data_pd = pd.read_excel('C:\\Users\\s152191\\Documents\\master_thesis_git\\report_plots\\ink1_polarization.xlsx')
data = np.array(data_pd)
x = data[:, 0]
line_5540 = data[:, 1]
line_5520 = data[:, 2]
line_550 = data[:, 3]
line_6040 = data[:, 4]
line_6020 = data[:, 5]
line_600 = data[:, 6]

viridis = cm.get_cmap('viridis', 4)
ax = plt.subplot(111, projection='polar' )
#ax.plot(x*np.pi/180, line_5540, label='55$^o$/40min', color=viridis(0), linewidth=2)
#ax.plot(x*np.pi/180, line_5520, label='55$^o$/20min', color=viridis(1), linewidth=2)
#ax.plot(x*np.pi/180, line_550, label='55$^o$/0min', color=viridis(2), linewidth=2)
ax.plot(x*np.pi/180, line_6040, label='60$^o$/40min', color=viridis(0), linewidth=2)
ax.plot(x*np.pi/180, line_6020, label='60$^o$/20min', color=viridis(1), linewidth=2)
ax.plot(x*np.pi/180, line_600, label='60$^o$/0min', color=viridis(2), linewidth=2)
ax.set_theta_zero_location('N')
ax.set_theta_direction(-1) # clockwise
ax.grid(True)

#ax.tick_params(axis='y')

#plt.xlabel("Linear polarizer angle [$^o$]", fontsize=14)
#plt.ylabel("Reflectance [%]", fontsize=14)
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.legend(fontsize=14, loc="upper right", bbox_to_anchor=(1.37, 1.18))
#plt.axhline(0, color='grey', linewidth=1, ls='dashed')

plt.savefig("reflectance ink 1 polarization" + ".png")
