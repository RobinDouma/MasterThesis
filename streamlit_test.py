import os  # Deletes written file to avoid error & retrieves directory info
from matplotlib import pyplot as plt
import numpy as np
import shaper  # File that makes shape coordinates
import writer  # File that writes the G-code
import initialization  # File that specifies the variables with the user
import visualizer  # Functions that visualize shapes and give mass & volume of print
import streamlit as st
import plotly.graph_objects as go
from plotly import tools
import plotly.offline as py
import plotly.express as px
# To run this - write: streamlit run streamlit_test.py in terminal


class Shape:
    """Creates an instance of a made shape"""
    def __init__(self, id_number, shape_type):
        self.id = id_number
        self.type = shape_type
        self.path2d = []
        self.path3d = []
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
    shapes[i].var['dir_name'] = os.getcwdb().decode()

# Generate path
for i, shape in enumerate(shapes):
    if i != 0:
        shape.path2d = shaper.rectangle_more(shape.var)
    else:
        shape.path2d = shaper.rectangle_first(shape.var)

for shape in shapes:
    if shape.var['dz_line'] == 0:
        shape.path3d = np.column_stack((shape.path2d, np.full(len(shape.path2d), shape.var['line_thickness'])))
    else:
        z = np.zeros(len(shape.path2d))
        for i in range(5, len(z) - 2):
            z[i + 1] = z[i - 3] + shape.var['dz_line']
        z[-1] = z[-2]
        z += shape.var['line_thickness']
        shape.path3d = np.column_stack((shape.path2d, z))

fig = go.Figure()
for number, shape in enumerate(shapes):
    x = shape.path3d[:, 0]
    y = shape.path3d[:, 1]
    z = shape.path3d[:, 2]
    name = ("Shape " + str(number))
    fig.add_trace(go.Mesh3d(x=x, y=y, z=z, opacity=0.5))
fig.update_layout(scene=dict(
    xaxis_title='x [mm]',
    yaxis_title='y [mm]',
    zaxis_title='z [mm]'),
    width=700,
    margin=dict(r=20, b=10, l=10, t=10))
fig.update_layout(
    title={
        'text': "Your to-be printed shapes!",
        'y':1,
        'x':0.5,
        'xanchor': 'center',
        'yanchor': 'top'})
st.plotly_chart(fig)

if os.path.exists("{0}\\G-Code\\{1}".format(shapes[0].var['dir_name'], shapes[0].var['file_name'])):  # Deletes G-code file if preexisting
    os.remove("{0}\\G-Code\\{1}".format(shapes[0].var['dir_name'], shapes[0].var['file_name']))

if st.button("Generate G-Code"):
    st.write("G-Code generated and put in G-Code folder in Python_3D_printer folder, good printing!")
    writer.gcode_writer(shapes[0].path2d, shapes[0].var)
    if shapes_number > 1:
        for shape_num in arange(1, shapes_number):
            writer.gcode_writer_more(shapes[shape_num].path2d, shapes[shape_num].var)
