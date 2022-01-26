import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from matplotlib import cm
import os

#  Input
file_dir = "/\\"
file_name = "Data_Frames 211112 p2 l2 front 455nm 1000mA water.xlsx"
lines_to_plot = 1
time_correction_LED_on = 0
x_offset = 0  # time_LEDon - 30  (video)
time = 79 - x_offset

#  Reads excel file
df = pd.read_excel(file_dir + file_name)

#  Makes sure displacement is a positive value
if "front" in file_name:
    df["Displacement"] *= -1
#  Makes sure the plot starts at the right x value
if time_correction_LED_on != 0:
    df["Time Bend"] += time_correction_LED_on
if x_offset != 0:
    df["Time Bend"] -= x_offset

#  Plot all lines
fig, ax = plt.subplots(figsize=(12, 8))
viridis = cm.get_cmap('viridis', lines_to_plot + 1)
#  Displacement plotter
ax.plot(df["Time Bend"], df["Displacement"], color=viridis(0), label="Displacement")
ax.set_xlabel("Time [s]", fontsize='14')
ax.yaxis.set_tick_params(labelsize=14)
ax.set_ylabel("Displacement [mm]", fontsize='14')
ax.xaxis.set_tick_params(labelsize=14)
#ax.set_xticks(np.arange(0, time, 90))
ax.xaxis.grid(which='both')
#ax.minorticks_on()
ax.tick_params(which='minor', bottom=False, left=False)
#ax.set_xlim([0, time])
#ax.set_ylim([0, 5])
ax.legend(fontsize='14', loc='best')
#  Finalize plot
plt.title(file_name, fontsize='16')
plt.show()

#  Save the figure
if os.path.exists(file_dir + "plot" + ".png"):  # Deletes file if preexisting
    os.remove(file_dir + "plot" + ".png")
fig.savefig(file_dir + "plot" + ".png")
