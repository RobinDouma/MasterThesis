import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from matplotlib import cm
import os


file_dir = "/Personal/Random\\"
file_name = "python input mA.xlsx"
lines_to_plot = 3

#  Reads excel file
df = pd.read_excel(file_dir + file_name)

#  Plot all lines
viridis = cm.get_cmap('viridis', lines_to_plot + 1)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
#  Finalize plot
#plt.figure(figsize=(10, 6))
plt.scatter(df["mA"], df["RM12_15_455"], color=viridis(0), label="15 cm")
#plt.scatter(df["mA"], df["UVA_15_455"], color=viridis(1), label="15 cm - UVA")
plt.scatter(df["mA"], df["RM12_30_455"], color=viridis(1), label="30 cm")
#plt.scatter(df["mA"], df["UVA_30_455"], color=viridis(3), label="30 cm - UVA")
plt.scatter(df["mA"], df["RM12_50_455"], color=viridis(2), label="50 cm")
#plt.scatter(df["mA"], df["UVA_50_455"], color=viridis(5), label="50 cm - UVA")
#plt.scatter(df["mA"], df["RM12_15_365"], color=viridis(0), label="15 cm - RM12")
#plt.scatter(df["mA"], df["UVA_15_365"], color=viridis(1), label="15 cm - UVA")
#plt.scatter(df["mA"], df["RM12_30_365"], color=viridis(2), label="30 cm - RM12")
#plt.scatter(df["mA"], df["UVA_30_365"], color=viridis(3), label="30 cm - UVA")
#plt.scatter(df["mA"], df["RM12_50_365"], color=viridis(4), label="50 cm - RM12")
#plt.scatter(df["mA"], df["UVA_50_365"], color=viridis(5), label="50 cm - UVA")
#plt.scatter(df["mA"], df["avg_15_365"], color=viridis(0), label="15 cm")
#plt.scatter(df["mA"], df["avg_30_365"], color=viridis(1), label="30 cm")
#plt.scatter(df["mA"], df["avg_50_365"], color=viridis(2), label="50 cm")
plt.xlabel("Intensity [mA]", fontsize='14')
plt.ylabel("RM12 intensity [mW/c$m^2$]", fontsize='14')
plt.legend(fontsize='14', loc='upper left')
plt.title("455 nm LED intensity at different distances", fontsize='16')
plt.xticks(fontsize='14')
plt.yticks([0, 100, 200, 300, 400],fontsize='14')
plt.grid()
plt.tight_layout()

#  Save and show the figure
if os.path.exists(file_dir + "plot" + ".png"):  # Deletes file if preexisting
    os.remove(file_dir + "plot" + ".png")
plt.savefig(file_dir + "plot" + ".png")
plt.show()
