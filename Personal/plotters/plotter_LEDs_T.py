import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from matplotlib import cm
import os


file_dir = "/Personal/Random\\"
file_name = "python input radiometer.xlsx"
lines_to_plot = 3

#  Reads excel file
df = pd.read_excel(file_dir + file_name)

#  Plot all lines
viridis = cm.get_cmap('viridis', lines_to_plot + 1)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
#  Finalize plot
#plt.figure(figsize=(10, 6))
plt.scatter(df["intensity_RM12_455"], df["temp_heat_455"], color=viridis(0), label="T$_a$$_v$$_g$ heated area")
plt.scatter(df["intensity_RM12_455"], df["temp_focus_455"], color=viridis(1), label="T$_a$$_v$$_g$ focus spot")
plt.scatter(df["intensity_RM12_455"], df["temp_max_455"], color=viridis(2), label="T$_m$$_a$$_x$")
#plt.scatter(df["intensity_RM12_365"], df["temp_heat_365"], color=viridis(0), label="T$_a$$_v$$_g$ heated area")
#plt.scatter(df["intensity_RM12_365"], df["temp_focus_365"], color=viridis(1), label="T$_a$$_v$$_g$ focus spot")
#plt.scatter(df["intensity_RM12_365"], df["temp_max_365"], color=viridis(2), label="T$_m$$_a$$_x$")
plt.xlabel("Intensity [mW cm$^-$$^2$]", fontsize='14')
plt.ylabel("Temperature $[^o$C]", fontsize='14')
plt.legend(fontsize='14', loc='upper left')
plt.title("455 nm LED intensity at 15 cm distance", fontsize='16')
plt.xticks([0, 100, 200, 300, 400], fontsize='14')
plt.yticks([20, 40, 60, 80, 100, 120], fontsize='14')
plt.grid()
plt.tight_layout()

#  Save and show the figure
if os.path.exists(file_dir + "plot" + ".png"):  # Deletes file if preexisting
    os.remove(file_dir + "plot" + ".png")
plt.savefig(file_dir + "plot" + ".png")
plt.show()
