import os  # Deletes written file to avoid error & retrieves directory info
from matplotlib import pyplot as plt
import numpy as np
import shaper  # File that makes shape coordinates
import writer  # File that writes the G-code
import initialization  # File that specifies the variables with the user
import visualizer  # Functions that visualize shapes and give mass & volume of print
import streamlit as st


# Necessary variables to pass to functions (rectangle), x0-z0 only non-zero for relative values
var = {'x_length': 40, 'y_length': 40, 'line_spacing': 0.1, 'line_thickness': 0.1, 'lines': 100, 'x0': 0, 'y0': 0,
       'z0': 0, 'offset': 5, 'speed': [120, 360, 600, 840], 'speed_multiplier': [1, 1, 1, 1], 'bed_T': 69,
       'nozzle_T': 79, 'nozzle_W': 0.335, 'dz_line': 0.01, 'file_name': 'test.gcode',
       'dir_name': os.getcwdb().decode()}
coordinates = []
path_shape = []
path_number = 0
paths = {}

ans = ""
# Makes sure user is satisfied with generated shape
while ans != "y":
    ans = ""  # resets answer
    #  Initializes G-Code writer by checking a set of variables with user
    var = initialization.variables_rectangle_first(var)  # in the future implement choice for shape

    # Shape generator
    path_shape = shaper.rectangle_first(var)  # Calculates coordinates for shape

    #  Visualization of the to be printed structure to check if shape needs to be changed & calculation mass & volume
    if var['dz_line'] == 0:  # for 2D plots, so with dz_line = 0
        var, coordinates = visualizer.initialization_visualizer_2d(var, path_shape)
    else:  # for 3D plots, so with dz_line
        var, coordinates = visualizer.initialization_visualizer_3d(var, path_shape)
    while (ans != 'y') & (ans != 'n'):
        ans = input("Does this shape of about %g µl, or %g g, satisfy intentions? [y/n]"
                    % (var['volume_guess'], var['mass_guess']))

# G-code generator
if os.path.exists("{0}\\G-Code\\{1}".format(var['dir_name'], var['file_name'])):  # Deletes G-code file if preexisting
    os.remove("{0}\\G-Code\\{1}".format(var['dir_name'], var['file_name']))
writer.gcode_writer(path_shape, var)

# Total path coordinates generator
path_name = ("Path_" + str(path_number))
paths[path_name] = coordinates

#  Visualization of the G-Code
f = open("{0}\\G-Code\\{1}".format(var['dir_name'], var['file_name']), "r")
print(f.read())
f.close()

ans, more = '', ''
# Checks if more shapes need to be printed and executes this too
while (more != 'y') & (more != 'n'):
    more = input("Do you want print more shapes with same G-code file? [y/n]")
    if more == 'y':
        while ans != "y":
            ans = ""  # resets answer
            var = initialization.variables_rectangle_more(var)  # Initializes new shape
            path_shape = shaper.rectangle_more(var)  # Calculates coordinates for new shape
            #  Visualization of the to be printed structure to check if shape needs to be changed & mass/volume
            if var['dz_line'] == 0:  # for 2D plots, so with dz_line = 0
                var, coordinates = visualizer.initialization_visualizer_2d(var, path_shape)
            else:  # for 3D plots, so with dz_line
                var, coordinates = visualizer.initialization_visualizer_3d(var, path_shape)
            while (ans != 'y') & (ans != 'n'):
                ans = input("Does this additional shape of about %g µl, or %g g, satisfy intentions? [y/n]"
                            % (var['volume_guess'], var['mass_guess']))
        # Adds new path to dictionary with all paths
        path_number += 1
        path_name = ("Path_" + str(path_number))
        paths[path_name] = coordinates
    elif more == 'n':
        break
    writer.gcode_writer_more(path_shape, var)
    #  Visualization of the G-Code
    f = open("{0}\\G-Code\\{1}".format(var['dir_name'], var['file_name']), "r")
    print(f.read())
    f.close()
    ans, more = '', ''

#  Visualization of the G-Code
f = open("{0}\\G-Code\\{1}".format(var['dir_name'], var['file_name']), "r")
print(f.read())
f.close()


# Visualization of total path
visualizer.initialization_visualizer_total(paths)
