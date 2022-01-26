from matplotlib import pyplot as plt
import csv
import numpy as np
from glob import glob as gb
from matplotlib import cm

# Change the file name and directory here for calculation
file_name = '211110 g1 l6'
file_dir = 'C:\\Users\\s152191\\OneDrive - TU Eindhoven\\Master\\0. Afstuderen\\3 - Experimental data' \
      '\\8. Interferometer\\211101 CLCEA2\\Slanted and cholesteric line width test\\'
x, y, y_diff = [], [], []

# Extracts the values from the .dat file
with open(file_dir + file_name + '.dat') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=';')
    for row in csv_reader:
        x.append(float(row[0]))
        y.append(float(row[1]))

# Finds the index where the profile starts
for i in np.arange(len(y)):
    y_diff.append(y[i] - y[i-1])
y_diff_i_max = y_diff.index(max(y_diff))

# Normalizes height w.r.t. glass height (treating glass as flat)
#calibration = np.average(y[0:y_diff_i_max])
#y -= calibration -1

# Flattens the results
for i, yi in enumerate(y):
    y[i] = yi - i * (y[-1]-y[0])/len(y)

# Calculates some interesting values and prints them
height_avg = np.average(y[y_diff_i_max::])
height_max = max(y)
print("The profile of:\n%s%s.dat\n, has the following properties [μm]:\nHeight average: %f\nHeight max: %f"
      % (file_dir, file_name, height_avg, height_max))

# Plots the profile
viridis = cm.get_cmap('viridis', 2)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
plt.plot(x, y, color=viridis(0))
plt.xlabel("x [μm]", fontsize=14)
plt.ylabel("z$_l$ [μm]", fontsize=14)
#plt.title("Profile of %s.dat" % file_name)
plt.yticks(np.arange(0, max(y)+10, 10), fontsize=14)
plt.xticks(np.arange(0, max(x), 1000), fontsize=14)
plt.ylim([0, round(max(y) + 10)])
plt.xlim([0, round(max(x))])
plt.grid()
# plt.text(x[y_diff_i_max], 10, "Average thickness: " + str(int(height_avg)) + "μm")
# plt.text(x[y_diff_i_max], 0, "Max thickness: " + str(int(height_max)) + "μm")
plt.savefig(file_dir + file_name + ".png")

