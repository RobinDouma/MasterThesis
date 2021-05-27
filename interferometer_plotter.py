from matplotlib import pyplot as plt
import csv
import numpy as np

# Change the file name and directory here for calculation
file_name = '210527 210520 g2 l3 mid'
file_dir = 'C:\\Users\\s152191\\OneDrive - TU Eindhoven\\Master\\0. Afstuderen\\3 - Experimental data' \
      '\\8. Inferometer\\210421 CLCEA2.1\\210527 210520-18 CLCEA2.1\\'
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
calibration = np.average(y[0:y_diff_i_max])
y -= calibration

# Calculates some interesting values and prints them
height_avg = np.average(y[y_diff_i_max::])
height_max = max(y)
print("The profile of:\n%s%s.dat\n, has the following properties [μm]:\nHeight average: %f\nHeight max: %f"
      % (file_dir, file_name, height_avg, height_max))

# Plots the profile
plt.plot(x, y)
plt.xlabel("x [μm]")
plt.ylabel("Line height [μm]")
plt.title("Profile of %s.dat" % file_name)
plt.text(x[y_diff_i_max], 10, "Average thickness: " + str(int(height_avg)) + "μm")
plt.text(x[y_diff_i_max], 0, "Max thickness: " + str(int(height_max)) + "μm")
plt.savefig(file_dir + file_name + ".png")
