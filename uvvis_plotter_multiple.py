from matplotlib import pyplot as plt
import csv
import numpy as np
import glob


class Spectrum:
    """Creates an instance of a made shape"""
    def __init__(self, name, x_data, y_data, y_index_max_data, x_max_data, y_max_data):
        self.id = name
        self.x = x_data
        self.y = y_data
        self.y_index_max = y_index_max_data
        self.x_max = x_max_data
        self.y_max = y_max_data

# Change the file name and directory here for calculation
file_extension = 'csv'
file_dir = 'C:\\Users\\s152191\\OneDrive - TU Eindhoven\\Master\\0. Afstuderen\\3 - Experimental data\\9. UV-Vis PE\\' \
           '210421 CLCEA2.1\\210526 210520 CLCEA2.1 lines - Reflection at RT\\'
file_names = glob.glob(file_dir + '*.{}'.format(file_extension))
cutoff = 600  # nm
spectra = [0] * len(file_names)

for file_i, file_name in enumerate(file_names):
    x, y = [], []
    name = file_name[161:-15]
    # Extracts the values from the .csv file
    with open(file_name) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=';')
        for i, row in enumerate(csv_reader):
            if i != 0:
                x.append(int(float(row[0].replace(',', '.'))))
                y.append(float(row[1].replace(',', '.')))
            else:
                continue

    # Finetune data
    cutoff_index = x.index(cutoff)
    x = x[cutoff_index::]
    y = y[cutoff_index::]

    # Calculates some interesting values and prints them
    y_max_index = y.index(max(y))
    x_max = x[y_max_index]
    y_max = y[y_max_index]
    print("The spectrum of:\n%s%s.dat\n, has the following properties [μm]:\nMax reflectance: %f %% at %f nm"
          % (file_dir, file_name, y_max, x_max))
    spectra[file_i] = Spectrum(name, x, y, y_max_index, x_max, y_max)

# Plots the profile
for spectrum in spectra:
    plt.plot(spectrum.x, spectrum.y)
    plt.xlabel("Wavelength [nm]")
    plt.ylabel("Reflectance [%]")
    plt.title("Reflectance of %s" % spectrum.id)
    plt.text(spectrum.x_max, spectrum.y_max, " at " + str(int(spectrum.x_max)) + " nm")
    plt.text(spectrum.x_max + 20, spectrum.y_max, str(int(spectrum.y_max)) + " %")
plt.show()
# plt.savefig(file_dir + file_name + ".png")
