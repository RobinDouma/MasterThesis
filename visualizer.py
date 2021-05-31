from matplotlib import pyplot as plt
import numpy as np


def initialization_visualizer_2d(var, path_shape):
    """"This function generates a 2D plot if dz_line is zero. It also guesses mass/volume ink needed"""
    plt.plot(path_shape[:, 0], path_shape[:, 1])
    plt.title(var['file_name'])
    plt.xlabel("x [mm]: bottom/top = side 0/2")
    plt.show()
    # Calculating estimate for mass & volume of print
    dist = np.zeros(len(path_shape) - 1)  # passes empty array to loop
    for i in range(0, len(path_shape) - 1):  # calculates the length of each printed line
        dist[i] = np.sqrt(
            (path_shape[i + 1][0] - path_shape[i][0]) ** 2 + (path_shape[i + 1][1] - path_shape[i][1]) ** 2)
    var['volume_guess'] = var['nozzle_W'] * var['line_thickness'] * np.sum(dist)  # calculates a volumetric estimate
    var['mass_guess'] = 0.001*var['volume_guess']  # source: https://www.sciencedirect.com/topics/engineering/elastomers
    xyz = np.column_stack((path_shape[:, 0], path_shape[:, 1], np.full(len(path_shape), var['line_thickness'])))
    return var, xyz


def initialization_visualizer_3d(var, path_shape):
    """"This function generates a 3D plot if dz_line is non-zero. It also guesses mass/volume ink needed"""
    ax = plt.axes(projection='3d')
    z = np.zeros(len(path_shape))
    for i in range(5, len(z) - 2):
        z[i + 1] = z[i - 3] + var['dz_line']
    z[-1] = z[-2]
    z += var['line_thickness']
    x = path_shape[:, 0]
    y = path_shape[:, 1]
    ax.plot3D(x, y, z)
    ax.set_title(var['file_name'])
    ax.set_xlabel("x [mm]: bottom/top = side 0/2 (i.r.l. not diagonal)")
    ax.set_ylabel("y [mm]: left/right = side 3/1")
    ax.set_zlabel("z [mm]")
    plt.show()
    # Calculating estimate for mass & volume of print
    dist, volume_guess = np.zeros(len(path_shape) - 1), np.zeros(len(path_shape) - 1)  # passes empty array to loop
    line_height = np.delete(z, 0)
    for i in range(0, len(path_shape) - 1):  # calculates length and volume of each line
        dist[i] = np.sqrt(
            (path_shape[i + 1][0] - path_shape[i][0]) ** 2 + (path_shape[i + 1][1] - path_shape[i][1]) ** 2)
        volume_guess[i] = var['nozzle_W'] * line_height[i] * dist[i]  # calculates a volumetric estimate
    var['volume_guess'] = np.sum(volume_guess)  # calculates total volume
    var['mass_guess'] = 0.001*var['volume_guess']  # source: https://www.sciencedirect.com/topics/engineering/elastomers
    xyz = np.column_stack((path_shape[:, 0], path_shape[:, 1], z))
    return var, xyz


def initialization_visualizer_total(paths):
    """"This function generates a 3D plot if dz_line is non-zero. It also guesses mass/volume ink needed"""
    ax = plt.axes(projection='3d')
    for number, path in enumerate(paths):
        x = paths[path][:, 0]
        y = paths[path][:, 1]
        z = paths[path][:, 2]
        name = ("Shape " + str(number))
        ax.plot3D(x, y, z, label=name)
    ax.set_title("This is the resulting print!")
    ax.set_xlabel("x [mm]: bottom/top = side 0/2 (i.r.l. not diagonal)")
    ax.set_ylabel("y [mm]: left/right = side 3/1")
    ax.set_zlabel("z [mm]")
    ax.legend()
    plt.show()
    return
