import numpy as np


def rectangle_first(var):
    """"Calculates coordinates for printer to follow
    MISSING: fail safe if close to center, fix with < 2* linespacing statement"""
    path = np.zeros((var['lines'], 8))  # path to be generate
    path[0][:] = [0, 0, var['x_length'], 0, var['x_length'],
                  var['y_length'], 0, var['y_length']]  # first coordinates for outline
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
    path_begin = [0, 0]  # gives a printable offset line from given coordinates
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


def circle_first(var):
    """"Calculates coordinates for printer to follow
    MISSING: fail safe if close to center, fix with < 2* linespacing statement"""
    path = np.zeros((var['lines'] * 180, 2))  # path to be generate
    for line in range(0, var['lines']):  # writes all other coordinates of shape (minus last line)
        if line != 0:
            for i, deg in enumerate((list(range(180, 361, 2)) + list(range(2, 179, 2)))):
                path[i + (180 * line)][0] = np.cos(np.radians(deg)) * (var['radius'] - line * var['line_spacing'])  # x
                path[i + (180 * line)][1] = np.sin(np.radians(deg)) * (var['radius'] - line * var['line_spacing'])  # y
        else:
            for i, deg in enumerate((list(range(180, 361, 2)) + list(range(2, 179, 2)))):
                path[i][0] = np.cos(np.radians(deg)) * var['radius']  # x pos
                path[i][1] = np.sin(np.radians(deg)) * var['radius']  # y pos
    # Creates the complete and usable shape from coordinates in path
    path[:, 0] += (var['offset'] + var['radius']) # adds the offset to x coordinates
    path_begin = [0, 0]  # gives a printable offset line from given coordinates
    path_end = [(var['offset'] + var['radius']), 0]  # create a path to middle of square to end print
    path = np.vstack((path_begin, path, path_end))  # adds begin and end offset to print path
    return path


def circle_more(var):
    """"Calculates coordinates for printer to follow
    MISSING: fail safe if close to center, fix with < 2* linespacing statement"""
    path = np.zeros((var['lines'] * 180, 2))  # path to be generate
    for line in range(0, var['lines']):  # writes all other coordinates of shape (minus last line)
        if line != 0:
            for i, deg in enumerate((list(range(180, 361, 2)) + list(range(2, 179, 2)))):
                path[i + (180 * line)][0] = np.cos(np.radians(deg)) * (var['radius'] - line * var['line_spacing'])  # x
                path[i + (180 * line)][1] = np.sin(np.radians(deg)) * (var['radius'] - line * var['line_spacing'])  # y
        else:
            for i, deg in enumerate((list(range(180, 361, 2)) + list(range(2, 179, 2)))):
                path[i][0] = np.cos(np.radians(deg)) * var['radius']  # x pos
                path[i][1] = np.sin(np.radians(deg)) * var['radius']  # y pos
    # Creates the complete and usable shape from coordinates in path
    path[:, 0] += (var['x0'] + var['offset'] + var['radius'])  # adds the offset to x coordinates
    path[:, 1] += var['y0']
    path_begin = [var['x0'], var['y0']]  # gives a printable offset line from given coordinates
    path_end = [(var['x0'] + var['offset'] + var['radius']), var['y0']]  # create a path to middle of square to end print
    path = np.vstack((path_begin, path, path_end))  # adds begin and end offset to print path
    return path


def line_first(var):
    """"Calculates coordinates for printer to follow"""
    path = np.zeros(((var['segments'] + 1), 2))  # path to be generated
    path[0][:] = [0, 0]  # first coordinates outline
    path[1::][1] = 0
    for seg in range(1, (var['segments'] + 1)):  # writes all other coordinates of shape (minus last line)
        path[seg][0] = seg * var['length'] / var['segments']
    # Creates the complete and usable shape from coordinates in path
    path[:, 0] = path[:, 0] + var['offset']  # adds the offset to x coordinates
    path_begin = [0, 0]  # gives a printable offset line from given coordinates
    path = np.vstack((path_begin, path))  # adds begin and end offset to print path
    return path


def line_more(var):
    """"Calculates coordinates for printer to follow"""
    path = np.zeros(((var['segments'] + 1), 2))  # path to be generated
    path[0][:] = [var['x0'], var['y0']]  # first coordinates outline
    path[1::][1] = var['y0']
    for seg in range(1, (var['segments'] + 1)):  # writes all other coordinates of shape (minus last line)
        path[seg][0] = seg * var['length'] / var['segments']
    # Creates the complete and usable shape from coordinates in path
    path[:, 0] = path[:, 0] + var['offset']  # adds the offset to x coordinates
    path_begin = [var['x0'], var['y0']]  # gives a printable offset line from given coordinates
    path = np.vstack((path_begin, path))  # adds begin and end offset to print path
    return path
