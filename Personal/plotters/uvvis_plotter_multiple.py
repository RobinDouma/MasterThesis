from matplotlib import pyplot as plt
from matplotlib import cm
import csv
import numpy as np
import glob
import xlsxwriter
import os

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
file_dir = 'C:\\Users\\s152191\\OneDrive - TU Eindhoven\\Master\\0. Afstuderen\\3 - Experimental data\\9. UV-Vis\\' \
           'Perkin Elmer\\211101 CLCEA2\\Transmittance different alignments\\'
file_names = glob.glob(file_dir + '*.{}'.format(file_extension))
cutoff = 600  # nm
spectra = [0] * len(file_names)
# Writes incomprehensible data into usable classes
for file_i, file_name in enumerate(file_names):
    x, y = [], []
    name = file_name[165:-15]
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
    #cutoff_index = x.index(cutoff)
    #x = x[cutoff_index::]
    #y = y[cutoff_index::]


    # Calculates some interesting values and prints them
    y_max_index = y.index(max(y))
    x_max = x[y_max_index]
    y_max = y[y_max_index]
    spectra[file_i] = Spectrum(name, x, y, y_max_index, x_max, y_max)

#base_y = np.array(spectra[-1].y)  # if last spectrum is baseline
#for spec in spectra:   # if last spectrum is baseline
   # spec.y = np.array(spec.y)
   # spec.y -= base_y

# Plots the profile
viridis = cm.get_cmap('viridis', len(spectra) + 1)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
label = ["N", "N*", "sN*"]
for spectrum_i, spectrum in enumerate(spectra):
    #if spectrum_i == (len(spectra) - 1):  # if last spectrum is baseline
      #  break
    color = spectrum_i / (len(spectra))
    plt.plot(spectrum.x, spectrum.y, label=label[spectrum_i], color=viridis(color))
    plt.xlabel("Wavelength [nm]", fontsize=14)
    plt.xlim([350, 750])
    plt.ylim([0, 100])
    plt.ylabel("Transmittance [%]", fontsize=14)
    plt.xticks(fontsize=14)
    plt.yticks(fontsize=14)
    #plt.title("Transmittance")
    #plt.axhline(0, color='grey', linewidth=1, ls='dashed')
    plt.axvline(535, color='grey', linewidth=1, ls='dashed')
    plt.legend(fontsize=14, loc='upper left')
if os.path.exists(file_dir + "plot" + ".png"):  # Deletes file if preexisting
    os.remove(file_dir + "plot" + ".png")
plt.savefig(file_dir + "plot" + ".png")

# Writes an .xlsx file for important values and a proper table of all values
if os.path.exists(file_dir + '\\extra\\output_python.xlsx'):  # Deletes file if preexisting
    os.remove(file_dir + '\\extra\\output_python.xlsx')
workbook = xlsxwriter.Workbook(file_dir + '\\extra\\output_python.xlsx')
worksheet_max = workbook.add_worksheet('Max')
worksheet_gen = workbook.add_worksheet('General')
worksheet_max.write(0, 0, 'ID')
worksheet_max.write(0, 1, 'Peak [nm]')
worksheet_max.write(0, 2, 'Reflectance [%R]')
worksheet_gen.write(0, 0, 'Wavelength [nm]')
for line, spec in enumerate(spectra):
    #if line == (len(spectra) - 1):  # if last spectrum is baseline
      #  break
    worksheet_max.write(line + 1, 0, spec.id)
    worksheet_max.write(line + 1, 1, spec.x_max)
    worksheet_max.write(line + 1, 2, spec.y_max)
    worksheet_gen.write(0, line + 1, spec.id)
    for y_i, y_point in enumerate(spec.y):
        if line != 0:
            worksheet_gen.write(y_i + 1, line + 1, spec.y[y_i])
        else:
            worksheet_gen.write(y_i + 1, line, spec.x[y_i])
            worksheet_gen.write(y_i + 1, line + 1, spec.y[y_i])
workbook.close()
