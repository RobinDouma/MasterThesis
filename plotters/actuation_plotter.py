import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from matplotlib import cm
import os

#  Input
file_dir = "F:\\Graduation project\\IR videos\\211118 p3 d2 pCh back 365nm 50mAp30s\\"
file_name = "211118 p3 d2 pCh back 365nm 50mAp30s.xlsx"
lines_to_plot = 4
time_correction_temperature = 0
x_offset = -1  # time_LEDon - 30  (video)
time = 484 - x_offset

#  Reads excel file
df = pd.read_excel(file_dir + file_name)
#df["Displacement"] *= -1

#  Makes sure the plot starts at the right x value
if time_correction_temperature != 0:
    df["Time Bend"] += time_correction_temperature
if x_offset != 0:
    df["Time Bend"] -= x_offset
    df["Time IR"] -= x_offset

#  Plot all lines
fig, ax = plt.subplots(figsize=(12, 8))
viridis = cm.get_cmap('viridis', lines_to_plot + 1)
#  Temperature plotter
ax.plot(df["Time IR"], df["AvgA(Celsius)"], color=viridis(0), label="T$_a$$_v$$_g$ heated area")
ax.plot(df["Time IR"], df["AvgB(Celsius)"], color=viridis(1), label="T$_a$$_v$$_g$ focus spot")
ax.plot(df["Time IR"], df["MaxA(Celsius)"], color=viridis(2), label="T$_m$$_a$$_x$")
ax.set_xlabel("Time [s]", fontsize='14')
ax.yaxis.set_tick_params(labelsize=14)
ax.set_ylabel("Temperature $[^o$C]", fontsize='14')
ax.xaxis.set_tick_params(labelsize=14)
ax.set_xticks(np.arange(0, time, 120))
ax.xaxis.grid(which='both')
ax.minorticks_on()
ax.tick_params(which='minor', bottom=False, left=False)
ax.set_xlim([0, time])
ax.set_ylim([20, 130])
ax.legend(fontsize='14', loc='upper left')
#  Displacement plotter
ax2 = ax.twinx()
ax2.plot(df["Time Bend"], df["Displacement"], color=viridis(3), label="Displacement")
ax2.set_ylabel("Displacement [mm]", fontsize='14')
ax2.yaxis.set_tick_params(labelsize=14)
ax2.set_ylim([0, 30])
ax2.legend(fontsize='14', loc='upper right')
#  Finalize plot
plt.title(file_name, fontsize='16')
plt.show()

#  Save the figure
if os.path.exists(file_dir + "plot" + ".png"):  # Deletes file if preexisting
    os.remove(file_dir + "plot" + ".png")
fig.savefig(file_dir + "plot" + ".png")