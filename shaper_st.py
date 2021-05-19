import numpy as np


def rectangle_first(var):
    """"Calculates coordinates for printer to follow
    MISSING: fail safe if close to center, fix with < 2* linespacing statement"""
    path = np.zeros((var['lines'], 8))  # path to be generate
    path[0][:] = [var['xo'], var['yo'], var['x_length'], var['yo'], var['x_length'],
                  var['y_length'], var['xo'], var['y_length']]  # first coordinates for outline
    for line in range(1, var['lines']):  # writes all other coordinates of shape (minus last line)
        if line != 1:
            path[line][0:2] = path[line-1][0:2] + [var['line_spacing'], var['line_spacing']]  # top left pos.
            path[line][2:4] = path[line-1][2:4] + [-var['line_spacing'], var['line_spacing']]  # top right pos.
            path[line][4:6] = path[line-1][4:6] + [-var['line_spacing'], -var['line_spacing']]  # bottom right pos.
            path[line][6:8] = path[line-1][6:8] + [var['line_spacing'], -var['line_spacing']]  # bottom left pos.
        else:
            path[line][0:2] = path[line-1][0:2] + [0, var['line_spacing']]  # top left coordinate, unique
            path[line][2:4] = path[line-1][2:4] + [-var['line_spacing'], var['line_spacing']]  # top right pos.
            path[line][4:6] = path[line-1][4:6] + [-var['line_spacing'], -var['line_spacing']]  # bottom right pos.
            path[line][6:8] = path[line-1][6:8] + [var['line_spacing'], -var['line_spacing']]  # bottom left pos.
    # Creates the complete and usable shape from coordinates in path
    # noinspection PyUnresolvedReferences
    path_resized = np.resize(path, (var['lines'] * 4, 2))  # create usable coordinates array
    path_resized[:, 0] = path_resized[:, 0] + var['offset']  # adds the offset to x coordinates
    path_begin = [var['xo'], var['yo']]  # gives a printable offset line from given coordinates
    path_last_line = path_resized[-4] + [var['line_spacing'], var['line_spacing']]  # makes sure left side get last line
    path_end = (path_resized[0, :] + path_resized[2, :]) / 2  # create a path to middle of square to end print
    path = np.vstack((path_begin, path_resized, path_last_line, path_end))  # adds begin and end offset to print path
    return path


def rectangle_more(var):
    """"Calculates coordinates for printer to follow
    MISSING: fail safe if close to center, fix with < 2* linespacing statement"""
    path = np.zeros((var['lines'], 8))  # path to be generate
    path[0][:] = [var['x0'], var['y0'], (var['x0'] + var['x_length']), var['y0'], (var['x0'] + var['x_length']),
                  (var['y0'] + var['y_length']), var['x0'], (var['y0'] + var['y_length'])]  # first coordinates outline
    for line in range(1, var['lines']):  # writes all other coordinates of shape (minus last line)
        if line != 1:
            path[line][0:2] = path[line-1][0:2] + [var['line_spacing'], var['line_spacing']]  # top left pos.
            path[line][2:4] = path[line-1][2:4] + [-var['line_spacing'], var['line_spacing']]  # top right pos.
            path[line][4:6] = path[line-1][4:6] + [-var['line_spacing'], -var['line_spacing']]  # bottom right pos.
            path[line][6:8] = path[line-1][6:8] + [var['line_spacing'], -var['line_spacing']]  # bottom left pos.
        else:
            path[line][0:2] = path[line-1][0:2] + [0, var['line_spacing']]  # top left coordinate, unique
            path[line][2:4] = path[line-1][2:4] + [-var['line_spacing'], var['line_spacing']]  # top right pos.
            path[line][4:6] = path[line-1][4:6] + [-var['line_spacing'], -var['line_spacing']]  # bottom right pos.
            path[line][6:8] = path[line-1][6:8] + [var['line_spacing'], -var['line_spacing']]  # bottom left pos.
    # Creates the complete and usable shape from coordinates in path
    # noinspection PyUnresolvedReferences
    path_resized = np.resize(path, (var['lines'] * 4, 2))  # create usable coordinates array
    path_resized[:, 0] = path_resized[:, 0] + var['offset']  # adds the offset to x coordinates
    path_begin = [var['x0'], var['y0']]  # gives a printable offset line from given coordinates
    path_last_line = path_resized[-4] + [var['line_spacing'], var['line_spacing']]  # makes sure left side get last line
    path_end = (path_resized[0, :] + path_resized[2, :]) / 2  # create a path to middle of square to end print
    path = np.vstack((path_begin, path_resized, path_last_line, path_end))  # adds begin and end offset to print path
    return path
