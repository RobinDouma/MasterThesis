import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from matplotlib import cm
import os


file_dir = "/Personal/Random\\"
file_name = "tnb ink.xlsx"
lines_to_plot = 3

#  Reads excel file
df = pd.read_excel(file_dir + file_name)

#  Plot all lines
viridis = cm.get_cmap('viridis', lines_to_plot + 1)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
#  Finalize plot
#plt.figure(figsize=(10, 6))
#plt.scatter(df["T"], df["38r"], color=viridis(0), label="38 $^o$C")
#plt.scatter(df["T"], df["44r"], color=viridis(1), label="44 $^o$C")
#plt.scatter(df["T"], df["56r"], color=viridis(2), label="56 $^o$C")
plt.scatter(df["T"], df["38l"], color=viridis(0), label="38 $^o$C")
plt.scatter(df["T"], df["44l"], color=viridis(1), label="44 $^o$C")
plt.scatter(df["T"], df["56l"], color=viridis(2), label="56 $^o$C")
plt.xlabel("T$_p$ [$^o$C]", fontsize='14')
plt.ylabel("λ$_m$$_a$$_x$ [nm]", fontsize='14')
plt.legend(fontsize='14', loc='upper right')
#plt.title("455 nm LED intensity at 15 cm distance", fontsize='16')
plt.xticks(fontsize='14')
plt.yticks(fontsize='14')
plt.ylim([490, 560])
plt.grid()
plt.tight_layout()

#  Save and show the figure
if os.path.exists(file_dir + "plot" + ".png"):  # Deletes file if preexisting
    os.remove(file_dir + "plot" + ".png")
plt.savefig(file_dir + "plot" + ".png")

