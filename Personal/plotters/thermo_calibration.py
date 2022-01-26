import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from matplotlib import cm
import os


file_dir = "/Personal/Random\\"
file_name = "thermo_calib.xlsx"
lines_to_plot = 3

#  Reads excel file
df = pd.read_excel(file_dir + file_name)

#  Plot all lines
viridis = cm.get_cmap('viridis', lines_to_plot + 1)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
#  Finalize plot
#plt.figure(figsize=(10, 6))
plt.scatter(df["b_in"], df["b_out"], color=viridis(0), label="T$_b$")
plt.scatter(df["n_in"], df["n_out"], color=viridis(1), label="T$_p$")
plt.scatter(df["e_in"], df["e_out"], color=viridis(2), label="T$_p$$_o$$_l$")
plt.xlabel("Temperature input (T$_i$$_n$) [$^o$C]", fontsize='14')
plt.ylabel("Temperature output [$^o$C]", fontsize='14')
plt.legend(fontsize='14', loc='upper left')
plt.grid()
zb = np.polyfit(df["b_in"], df["b_out"], 1)
zn = np.polyfit(df["n_in"], df["n_out"], 1)
ze = np.polyfit(df["e_in"], df["e_out"], 1)
plt.title("T$_b$  = %.2f T$_i$$_n$ + %.2f\nT$_p$  = %.2f T$_i$$_n$ + %.2f\nT$_p$$_o$$_l$= %.2f T$_i$$_n$ + %.2f"
          % (zb[0], zb[1], zn[0], zn[1], ze[0], ze[1]), fontsize='14')
plt.yticks(fontsize='14')
plt.xticks(fontsize='14')
#plt.grid()
plt.tight_layout()

#  Save and show the figure
if os.path.exists(file_dir + "plot" + ".png"):  # Deletes file if preexisting
    os.remove(file_dir + "plot" + ".png")
plt.savefig(file_dir + "plot" + ".png")
plt.show()
