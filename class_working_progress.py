class Shape:
    """Creates an instance of a made shape"""

    def __init__(self, path, var, id_number):
        self.path = path
        self.var_old = var
        self.id = id_number

    def __str__(self):
        return "Shape %f has been made with it's origin at (%f, %f)." % (self.id, self.var['x0'], self.var['y0'])

# shapes = {}
# while...
# shape = ("Shape_" + str(shape_number))
# shapes[shape] = Shape(path_shape, var, shape_number)


for s in shapes:  # prints all variables
    print(s, ": ", shapes[s])
