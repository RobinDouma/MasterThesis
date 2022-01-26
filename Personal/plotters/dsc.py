import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from matplotlib import cm
import os


file_dir = "/Personal/Random\\"
file_name = "dsc ink.xlsx"
lines_to_plot = 3

#  Reads excel file
df = pd.read_excel(file_dir + file_name)
#df = df.iloc[::100, :]
#  Plot all lines
viridis = cm.get_cmap('viridis', lines_to_plot + 1)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
#  Finalize plot
#plt.figure(figsize=(10, 6))
plt.plot(df["temp"], df["heat"], color=viridis(0))
plt.scatter(-27.8, -0.0965, s=80, marker="o", color=viridis(1))
plt.scatter(55, -0.135, s=80, marker="o", color=viridis(2))
plt.xlabel("Temperature [$^o$C]", fontsize='14')
plt.ylabel("Normalized heat flow [W/g]", fontsize='14')
plt.yticks(np.arange(-0.2, 0, 0.05), fontsize='14')
plt.ylim([-0.15, -0.05])
plt.xlim([-40, 120])
plt.xticks(np.arange(-40, 140, 20), fontsize='14')
#plt.grid()
plt.tight_layout()

#  Save and show the figure
if os.path.exists(file_dir + "plot" + ".png"):  # Deletes file if preexisting
    os.remove(file_dir + "plot" + ".png")
plt.savefig(file_dir + "plot" + ".png")
plt.show()
