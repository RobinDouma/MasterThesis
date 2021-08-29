import os  # Deletes written file to avoid error & retrieves directory info
import numpy as np
import shaper  # File that makes shape coordinates
import writer  # File that writes the G-code
import streamlit as st
import plotly.graph_objects as go


# To run this - write: streamlit run streamlit_test.py in terminal

# Make new variable: time between prints and add it as command in machine (G0 with speed or wait command)
class Shape:
    """Creates an instance of a made shape"""
    def __init__(self, id_number, shape_type):
        self.id = id_number
        self.type = shape_type
        self.path2d = []
        self.path3d = []
        if self.type == "Rectangle":  # Generates a dictionary of variables for rectangle type shapes
            self.var = {'x_length': 20.0, 'y_length': 4.0, 'line_spacing': 0.25, 'line_thickness': 0.1, 'lines': 8,
                        'x0': 0.0, 'y0': 0.0, 'z0': 0.0, 'offset': 5.0, 'speed': [360.0, 360.0, 360.0, 360.0],
                        'speed_add': [0.0, 0.0, 0.0, 0.0], 'bed_T': 56.0, 'nozzle_T': 72.0, 'nozzle_W': 0.335,
                        'dz_line': 0.0, 'shape_time_delay': 0.0, 'P_value': [4000.0, 4000.0, 4000.0, 4000.0],
                        'P_add': [0.0, 0.0, 0.0, 0.0]}
        elif self.type == "Circle":  # Generates a dictionary of variables for circular type shapes
            self.var = {'radius': 5.0, 'line_spacing': 0.2, 'line_thickness': 0.05, 'lines': 10, 'x0': 0.0, 'y0': 0.0,
                        'z0': 0.0, 'offset': 5.0, 'speed': 120.0, 'speed_add': 0.0, 'bed_T': 68.0, 'nozzle_T': 81.0,
                        'nozzle_W': 0.335, 'dz_line': 0.0, 'shape_time_delay': 0.0, 'P_value': 3000.0, 'P_add': 8000.0}
        elif self.type == "Line":  # Generates a dictionary of variables for rectangle type shapes
            self.var = {'length': 60.00, 'segments': 4, 'line_thickness': 0.050, 'x0': 0.0, 'y0': 0.0, 'z0': 0.0,
                        'offset': 5.0, 'speed': 120.0, 'speed_multiplier': 1.0, 'speed_add': 0.0, 'bed_T': 68.0,
                        'nozzle_T': 81.0, 'nozzle_W': 0.335, 'dz_line': 0.0, 'shape_time_delay': 0.0, 'P_value': 3000.0,
                        'S_value': 1.0, 'P_multiplier': 1.0, 'P_add': 0.0, 'S_multiplier': 1.0, 'S_add': 0.0}
        else:
            self.var = {}


# Introduction
st.title("Welcome to Robin's shape & G-code generator for 3D printing!")
st.subheader("- squares, rectangles, cubes, pyramids, circles, ovals, cylinders & cones -")

# Choose number of shapes & variable generator w.r.t. number of shapes
shapes_number = st.number_input("How many shapes do you want to make?", int(1))
file_name = st.text_input("How do you want to name the G-code??", "name.gcode")
st.header("Choose the type of shape you would like to make:")
st.text("Note: all values are of the order [mm], [min], [oC] & [-] or any combinations of these!")
column = st.beta_columns(shapes_number)
shapes = [0] * shapes_number
shape_choice = [0] * shapes_number
shape_types = ["Rectangle", "Circle", "Line", "Other"]

for i in np.arange(0, shapes_number):  # Iterates over all shapes
    shape_choice[i] = column[i].radio("Select shape type %i: " % (i+1), shape_types)
    shapes[i] = Shape(i, shape_choice[i])
    if shape_choice[i] != "Other":
        column[i].success(shape_choice[i])
    else:
        column[i].error("Other shapes not possible yet, sorry.")
    for v in shapes[i].var:  # Change all variable values in dictionary
        if isinstance(shapes[i].var[v], list):
            for side_name, side_value in enumerate(shapes[i].var[v]):
                shapes[i].var[v][side_name] = column[i].number_input("Shape %i: %s side %i: " % ((i+1), v, side_name),
                                                                     value=shapes[i].var[v][side_name])
        elif isinstance(shapes[i].var[v], str):
            shapes[i].var[v] = column[i].text_input("Shape %i: %s: " % ((i+1), v), shapes[i].var[v])
        else:
            if (v != "x0") & (v != "y0") & (v != "z0"):
                shapes[i].var[v] = column[i].number_input("Shape %i: %s: " % ((i+1), v), value=shapes[i].var[v])
            elif i == 0:
                shapes[i].var[v] = column[i].number_input("Shape %i: %s (HOME)" % ((i + 1), v), value=shapes[i].var[v])
            else:
                shapes[i].var[v] = column[i].number_input("Shape %i: change in %s from HOME" % ((i + 1), v),
                                                          value=shapes[i].var[v])
    shapes[i].var["file_name"] = file_name
    shapes[i].var['dir_name'] = os.getcwdb().decode()

# Generate path
for i, shape in enumerate(shapes):
    if i != 0:
        if shape.type == 'Rectangle':
            shape.path2d = shaper.rectangle_more(shape.var)
        elif shape.type == 'Circle':
            shape.path2d = shaper.circle_more(shape.var)
        elif shape.type == 'Line':
            shape.path2d = shaper.line_more(shape.var)
    else:
        if shape.type == 'Rectangle':
            shape.path2d = shaper.rectangle_first(shape.var)
        elif shape.type == 'Circle':
            shape.path2d = shaper.circle_first(shape.var)
        elif shape.type == 'Line':
            shape.path2d = shaper.line_first(shape.var)
for shape in shapes:
    if shape.var['dz_line'] == 0:
        shape.path3d = np.column_stack((shape.path2d, np.full(len(shape.path2d), shape.var['line_thickness'])))
    else:
        z = np.zeros(len(shape.path2d))
        if shape.type == 'Rectangle':
            for i in range(5, len(z) - 2):
                z[i + 1] = z[i - 3] + shape.var['dz_line']
            z[-1] = z[-2]
            z += shape.var['line_thickness']
            shape.path3d = np.column_stack((shape.path2d, z))
        elif shape.type == 'Circle':
            for i in range(2, len(z), 180):
                z[i:(i + 180)] = z[i-1] + shape.var['dz_line']
            z[-1] = z[-2]
            z += shape.var['line_thickness']
            shape.path3d = np.column_stack((shape.path2d, z))
        elif shape.type == 'Line':
            for i in range(2, len(z)):
                z[i] = z[i-1] + shape.var['dz_line']
            z += shape.var['line_thickness']
            shape.path3d = np.column_stack((shape.path2d, z))
# Generates the shapes to be printed for the user to see if they are as intended
fig = go.Figure()
for number, shape in enumerate(shapes):
    x, y, z = shape.path3d[:, 0], shape.path3d[:, 1], shape.path3d[:, 2]
    name = ("Shape " + str(number))
    fig.add_trace(go.Scatter3d(x=x, y=y, z=z, opacity=1, name=("Shape " + str(number+1))))
    if shape.type == 'Rectangle':
        fig.add_trace(go.Mesh3d(x=x, y=y, z=z, opacity=0.5))
fig.add_trace(go.Scatter3d(x=[0], y=[0], z=[0], opacity=0.5, name="Home"))
fig.update_layout(scene=dict(xaxis_title='x [mm]', yaxis_title='y [mm]', zaxis_title='z [mm]'), width=700,
                  margin=dict(r=20, b=10, l=10, t=10))
fig.update_layout(title={'text': "Your to-be printed shapes!", 'y': 1, 'x': 0.5, 'xanchor': 'center', 'yanchor': 'top'})
st.plotly_chart(fig)

# Makes sure if the file name already exists that it is deleted
if os.path.exists("{0}\\G-Code\\{1}".format(shapes[0].var['dir_name'], shapes[0].var['file_name'])):  # Deletes G-code file if preexisting
    os.remove("{0}\\G-Code\\{1}".format(shapes[0].var['dir_name'], shapes[0].var['file_name']))

# Gives user the choice to generate a G-Code if the shapes are satisfactory
if st.button("Generate G-Code"):
    st.write("G-Code generated named: %s.\n\nStored in ""%s""\\G-Code."
             "\n\nGood printing!" % (shapes[0].var['file_name'], shapes[0].var['dir_name']))
    writer.gcode_writer(shapes[0].path2d, shapes[0].var, 1, shapes[0].type)
    if shapes_number > 1:
        for shape_num in range(1, shapes_number):
            writer.gcode_writer_more(shapes[shape_num].path2d, shapes[shape_num].var, (shape_num + 1),
                                     shapes[shape_num].type)
