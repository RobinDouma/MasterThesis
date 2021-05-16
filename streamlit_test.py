import os  # Deletes written file to avoid error & retrieves directory info
from matplotlib import pyplot as plt
import numpy as np
import shaper  # File that makes shape coordinates
import writer  # File that writes the G-code
import initialization  # File that specifies the variables with the user
import visualizer  # Functions that visualize shapes and give mass & volume of print
import streamlit as st
# To run this - write: streamlit run streamlit_test.py in terminal


class Shape:
    """Creates an instance of a made shape"""
    def __init__(self, id_number, shape_type):
        self.id = id_number
        self.type = shape_type
        if self.type == "Rectangle":  # Generates a dictionary of variables for rectangle type shapes
            self.var = {'x_length': 40, 'y_length': 40, 'line_spacing': 0.1, 'line_thickness': 0.1, 'lines': 100,
                        'x0': 0, 'y0': 0, 'z0': 0, 'offset': 5, 'speed': [120, 360, 600, 840],
                        'speed_multiplier': [1, 1, 1, 1], 'bed_T': 69, 'nozzle_T': 79, 'nozzle_W': 0.335,
                        'dz_line': 0.01}
        else:  # Variables to be thought of for other shape type
            self.var = {}


# Introduction
st.title("Welcome to the Robin's shape & G-code generator for 3D printing!")
st.header("First, choose the type of shape you would like to make:")
st.subheader("(at the moment only rectangles are possible)")

# Choose number of shapes & variable generator w.r.t. number of shapes
shapes_number = st.number_input("How many shapes do you want to make?", int(1))
file_name = st.text_input("How do you want to name the G-code??", "name.gcode")
st.text("Note: all values are of the order [mm], [min], [oC] & [-] or any combinations of these!")
column = st.beta_columns(shapes_number)
shapes = [0] * shapes_number
shape_choice = [0] * shapes_number
shape_types = ["Rectangle", "Other"]

for i in np.arange(0, shapes_number):  # Iterates over all shapes
    shape_choice[i] = column[i].radio("Select shape type %i: " % (i+1), shape_types)
    shapes[i] = Shape(i, shape_choice[i])
    if shape_choice[i] == "Rectangle":
        column[i].success("Rectangle")
    else:
        column[i].error("Other shapes not possible yet, sorry.")
    for v in shapes[i].var:  # Change all variable values in dictionary
        if isinstance(shapes[i].var[v], list):
            for side_name, side_value in enumerate(shapes[i].var[v]):
                shapes[i].var[v][side_name] = column[i].number_input("Shape %i: %s side %i: " % ((i+1), v, side_name),
                                                                     shapes[i].var[v][side_name])
        elif isinstance(shapes[i].var[v], str):
            shapes[i].var[v] = column[i].text_input("Shape %i: %s: " % ((i+1), v), shapes[i].var[v])
        else:
            shapes[i].var[v] = column[i].number_input("Shape %i: %s: " % ((i+1), v), shapes[i].var[v])
    shapes[i].var["file_name"] = file_name
    shapes[i].var['dir_name']: os.getcwdb().decode()

