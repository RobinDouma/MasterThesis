import os  # Deletes written file to avoid error & retrieves directory info
from matplotlib import pyplot as plt
import numpy as np
import shaper  # File that makes shape coordinates
import writer  # File that writes the G-code
import initialization  # File that specifies the variables with the user
import visualizer  # Functions that visualize shapes and give mass & volume of print
import streamlit as st


class Shape:
    """Creates an instance of a made shape"""

    def __init__(self, id_number):
        self.id = id_number


# Necessary variables to pass to functions (rectangle), x0-z0 only non-zero for relative values
var = {'x_length': 40, 'y_length': 40, 'line_spacing': 0.1, 'line_thickness': 0.1, 'lines': 100, 'x0': 0, 'y0': 0,
       'z0': 0, 'offset': 5, 'speed': [120, 360, 600, 840], 'speed_multiplier': [1, 1, 1, 1], 'bed_T': 69,
       'nozzle_T': 79, 'nozzle_W': 0.335, 'dz_line': 0.01, 'file_name': 'test.gcode',
       'dir_name': os.getcwdb().decode()}

# Introduction
st.title("Welcome to the Robin's shape & G-code generator for 3D printing!")
st.header("First, choose the type of shape you would like to make:")
st.subheader("(at the moment only rectangles are possible)")

# Choose amount of shapes
var['file_name'] = st.text_input("What would you like the G-code to be named?", var["file_name"])
shapes_number = st.number_input("How many shapes do you want to make?", int(1))
shapes = [0] * shapes_number
shape_choice = [0] * shapes_number
shape_types = ["Rectangle", "Circle"]

for i in np.arange(0, shapes_number):
    shapes[i] = Shape(i)
    shape_choice[i] = st.radio("Select shape type %i: " % i, shape_types)
    if shape_choice[i] == "Rectangle":
        st.success("Rectangle")
    else:
        st.error("Other shapes not possible yet, sorry.")
    for v in var:
        st.write("What value should %s attain?" % v)
        var[v] = st.number_input("How many shapes do you want to make?", var[v])
