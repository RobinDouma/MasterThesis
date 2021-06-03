import os  # Deletes written file to avoid error & retrieves directory info


def gcode_writer(path, var, shape_num, type):
    """Writes the g-code to be used by printer with some default lines"""
    f = open("{0}\\G-Code\\{1}".format(var['dir_name'], var['file_name']), "x")
    f.write("; SHAPE %i STARTS HERE\n\n"
            "; INITIALIZATION : GENERAL\n"
            "G28 Z0 ; home Z\n"
            "G28 X0 Y0 ; home X/Y\n\n"
            "G21 ; set units : mm\n"
            "G90 ; coordinates printing : absolute\n"
            "M82 ; coordinates extrusion : absolute\n\n" % shape_num)  # initialization general
    f.write("; INITIALIZATION : PRINTING\n"
            "M660 H2 Z%g ; slot 1 : define start Z\n"
            ";M660 H3 Z119.999 ; slot 2 : define start z\n\n"
            "M6 T12 O2 X%g Y%g ; slot 1 : define start x & y\n"
            ";M6 T13 O3 X45 Y84 ; slot 2 : define start x & y\n\n"
            "M190 S%g ; bed : define temperature\n"
            "M109 T12 S%g ; slot 1 : define temperature\n\n"
            "M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], "
            "unprime start wrt move end[ms], tool[#]\n"
            "M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], "
            "prime start wrt move end[ms], tool[#]\n"
            "M221 P1000 S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
            "nozzle[mm]\n\n" % (var['z0'], var['x0'], var['y0'], var['bed_T'], var['nozzle_T'],
                                var['line_thickness'], var['nozzle_W']))  # initialization printing
    f.write("; PRINTING : START-UP\n"
            "T1 ; slot 1\n"
            ";T2 ; slot 2\n\n"
            "G0 X0 Y0 ; goes to defined start x & y\n"
            "G0 Z0 H2 ; goes to defined start z\n\n"
            "M722 S10000 E99999 P6000 I0 T12 ; prime\n"
            "G92 E0 ; replace extruder position : E[mm]\n\n"
            "G4 P5000 ; wait P[ms]\n\n")  # printing start-up
    line_thickness = var['line_thickness']
    if type == 'Rectangle':
        f.write("; PRINTING : EXTRUSION\n"
                "G1 Z%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n" % (var['line_thickness'], var['speed'][0], path[0][0], path[0][1],
                                         var['speed'][0], path[1][0], path[1][1], var['speed'][0]))
        for i, xy in enumerate(path[2::][:]):
            s = int(i % 4)
            flow_multiplier = var['speed'][s] / 120
            if (var['speed_multiplier'] != 0) & (i % 4 == 0) & (i != 0):  # if after each contour speed is to be multiplied
                for side in range(0, len(var['speed'])):
                    var['speed'][side] *= var['speed_multiplier'][side]
            if (i % 4 == 0) & (i != 0) & (var['dz_line'] != 0):  # adds z/flow increase if required per rectangular outline
                line_thickness += var['dz_line']
                f.write("G1 Z%g E1 F%g\n"
                        "M221 P%g S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % (line_thickness, var['speed'][s], (1000 * flow_multiplier), line_thickness,
                                            var['nozzle_W']))
            if (var['speed'][s] != var['speed'][s-1]) & (i != 0):
                f.write("M221 P%g S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % ((1000 * flow_multiplier), line_thickness, var['nozzle_W']))
            f.write("G1 X%g Y%g E1 F%g\n\n" % (xy[0], xy[1], var['speed'][s]))
    elif type == 'Circle':
        f.write("; PRINTING : EXTRUSION\n"
                "G1 Z%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n" % (var['line_thickness'], var['speed'], path[0][0], path[0][1],
                                         var['speed'], path[1, 0], path[0, 1], var['speed']))
        for circle in range(0, var['lines']):
            flow_multiplier = var['speed'] / 120
            if (var['speed_multiplier'] != 0) & (circle != 0):  # if after each contour speed is to be multiplied
                var['speed'] *= var['speed_multiplier']
            if (var['dz_line'] != 0) & (circle != 0):  # adds z/flow increase if required per rectangular outline
                line_thickness += var['dz_line']
                f.write("G1 Z%g E1 F%g\n"
                        "M221 P%g S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % (line_thickness, var['speed'], (1000 * flow_multiplier), line_thickness,
                                            var['nozzle_W']))
            if (var['speed_multiplier'] != 1) & (circle != 0):
                f.write("M221 P%g S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % ((1000 * flow_multiplier), line_thickness, var['nozzle_W']))
            if circle != 0:
                f.write("G0 X%g\n" % (path[1, 0] + var['line_spacing'] * circle))
                f.write("G3 X%g Y%g I%g J%g E1 F%g\n\n" % ((path[1, 0] + var['line_spacing'] * circle), path[0, 1],
                                                         (var['radius'] + var['offset']), path[0, 1], var['speed']))
            else:
                f.write("G3 X%g Y%g I%g J%g E1 F%g\n\n" % (path[1, 0], path[0, 1], (var['radius'] + var['offset']),
                                                         path[0, 1], var['speed']))
    elif type == 'Line':
        f.write("; PRINTING : EXTRUSION\n"
                "G1 Z%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n\n" % (var['line_thickness'], var['speed'], path[0][0], path[0][1],
                                           var['speed'], path[1][0], path[1][1], var['speed']))
        for i, xy in enumerate(path[2::][:]):
            if var['dz_line'] != 0:  # adds z/flow increase if required per rectangular outline
                line_thickness += var['dz_line']
                f.write("G1 Z%g E1 F%g\n" % (line_thickness, var['speed']))
            if (var['speed_multiplier'] != 1) | (var['speed_add'] != 0):
                var['speed'] *= var['speed_multiplier']
                var['speed'] += var['speed_add']
            if (var['P_multiplier'] != 1) | (var['P_add'] != 0):
                var['P_value'] *= var['P_multiplier']
                var['P_value'] += var['P_add']
            if (var['S_multiplier'] != 1) | (var['S_add'] != 0):
                var['S_value'] *= var['S_multiplier']
                var['S_value'] += var['S_add']
            if (var['dz_line'] != 0) | (var['P_multiplier'] != 1) | (var['P_add'] != 0) | (var['S_multiplier'] != 1) | \
                    (var['S_add'] != 0):
                f.write("M221 P%g S%g T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % (var['P_value'], var['S_value'], line_thickness, var['nozzle_W']))
            f.write("G1 X%g Y%g E1 F%g\n\n" % (xy[0], xy[1], var['speed']))
    f.write("; PRINTING : FINALIZATION\n"
            "G0 Z50 ; go up Z[mm]\n\n"
            "M721 S10000 E99999 P6000 I0 T12 ; unprime\n"
            "G4 P1000 ; wait P[ms]\n"
            "M721 S10000 E99999 P6000 I0 T12 ; unprime\n"
            "G4 P10000 ; wait P[ms]\n\n"
            "G53 ; clear offsets\n"
            "M30 ; end of program")  # printing start-up
    f.close()
    return


def gcode_writer_more(path, var, shape_num, type):
    """Writes the g-code to be used by printer with some default lines"""
    # Removes end of program of previous shapes
    edit = open("{0}\\G-Code\\{1}".format(var['dir_name'], var['file_name']))
    text = edit.readlines()
    edit.close()
    os.remove("{0}\\G-Code\\{1}".format(var['dir_name'], var['file_name']))
    f = open("{0}\\G-Code\\{1}".format(var['dir_name'], var['file_name']), 'x')
    # Writes the G-code
    f.writelines([line for line in text[:-2]])
    f.write(";SHAPE %i STARTS HERE\n\n"
            "; INITIALIZATION : PRINTING\n"
            "M190 S%g ; bed : define temperature\n"
            "M109 T12 S%g ; slot 1 : define temperature\n\n"
            "M221 P1000 S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
            "nozzle[mm]\n\n" % (shape_num, var['bed_T'], var['nozzle_T'],
                                var['line_thickness'], var['nozzle_W']))  # initialization printing
    f.write("; PRINTING : START-UP\n"
            "G0 X%g Y%g ; goes to defined start x & y\n"
            "G0 Z0 H2 ; goes to defined start z\n\n"
            "G4 P%f ; wait P[ms] between shapes\n"
            "M722 S10000 E99999 P6000 I0 T12 ; prime\n"
            "M722 S10000 E99999 P6000 I0 T12 ; prime\n"
            "G92 E0 ; replace extruder position : E[mm]\n\n"
            "G4 P5000 ; wait P[ms]\n\n" % (var['x0'], var['y0'], float((var['shape_time_delay'] * 60000)))
            )  # printing start-up
    line_thickness = var['line_thickness']
    if type == 'Rectangle':
        f.write("; PRINTING : EXTRUSION\n"
                "G1 Z%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n" % (var['line_thickness'], var['speed'][0], path[0][0], path[0][1],
                                         var['speed'][0], path[1][0], path[0][1], var['speed'][0]))
        for i, xy in enumerate(path[2::][:]):
            s = int(i % 4)
            flow_multiplier = var['speed'][s] / 120
            if (var['speed_multiplier'] != 0) & (i % 4 == 0) & (i != 0):  # if after each contour speed is multiplied
                for side in range(0, len(var['speed'])):
                    var['speed'][side] *= var['speed_multiplier'][side]
            if (i % 4 == 0) & (i != 0) & (var['dz_line'] != 0):  # adds z increase if required per rectangular outline
                line_thickness += var['dz_line']
                f.write("G1 Z%g E1 F%g\n"
                        "M221 P%g S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % (line_thickness, var['speed'][s], (1000 * flow_multiplier), line_thickness,
                                            var['nozzle_W']))
            if (var['speed'][s] != var['speed'][s-1]) & (i != 0):
                f.write("M221 P%g S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % ((1000 * flow_multiplier), line_thickness, var['nozzle_W']))
            f.write("G1 X%g Y%g E1 F%g\n" % (xy[0], xy[1], var['speed'][s]))
    elif type == 'Circle':
        f.write("; PRINTING : EXTRUSION\n"
                "G1 Z%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n\n" % (var['line_thickness'], var['speed'], path[0][0], path[0][1],
                                         var['speed'], path[1][0], path[0][1], var['speed']))
        for circle in range(0, var['lines']):
            flow_multiplier = var['speed'] / 120
            if (var['speed_multiplier'] != 0) & (circle != 0):  # if after each contour speed is to be multiplied
                var['speed'] *= var['speed_multiplier']
            if (var['dz_line'] != 0) & (circle != 0):  # adds z/flow increase if required per rectangular outline
                line_thickness += var['dz_line']
                f.write("G1 Z%g E1 F%g\n"
                        "M221 P%g S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % (line_thickness, var['speed'], (1000 * flow_multiplier), line_thickness,
                                            var['nozzle_W']))
            if (var['speed_multiplier'] != 1) & (circle != 0):
                f.write("M221 P%g S1.0 T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % ((1000 * flow_multiplier), line_thickness, var['nozzle_W']))
            if circle != 0:
                f.write("G0 X%g\n" % (path[1, 0] + var['line_spacing'] * circle))
                f.write("G3 X%g Y%g I%g J%g E1 F%g\n\n" % ((path[1, 0] + var['line_spacing'] * circle), path[0, 1],
                                                         (var['radius'] + var['offset']), path[0, 1], var['speed']))
            else:
                f.write("G3 X%g Y%g I%g J%g E1 F%g\n\n" % (path[1, 0], path[0, 1], (var['radius'] + var['offset']),
                                                         path[0, 1], var['speed']))
    elif type == 'Line':
        f.write("; PRINTING : EXTRUSION\n"
                "G1 Z%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n"
                "G1 X%g Y%g E1 F%g\n\n" % (var['line_thickness'], var['speed'], path[0][0], path[0][1],
                                         var['speed'], path[1][0], path[1][1], var['speed']))
        for i, xy in enumerate(path[2::][:]):
            if var['dz_line'] != 0:  # adds z/flow increase if required per rectangular outline
                line_thickness += var['dz_line']
                f.write("G1 Z%g E1 F%g\n" % (line_thickness, var['speed']))
            if (var['speed_multiplier'] != 1) | (var['speed_add'] != 0):
                var['speed'] *= var['speed_multiplier']
                var['speed'] += var['speed_add']
            if (var['P_multiplier'] != 1) | (var['P_add'] != 0):
                var['P_value'] *= var['P_multiplier']
                var['P_value'] += var['P_add']
            if (var['S_multiplier'] != 1) | (var['S_add'] != 0):
                var['S_value'] *= var['S_multiplier']
                var['S_value'] += var['S_add']
            if (var['dz_line'] != 0) | (var['P_multiplier'] != 1) | (var['P_add'] != 0) | (var['S_multiplier'] != 1) |\
                    (var['S_add'] != 0):
                f.write("M221 P%g S%g T12 Z%g W%g  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], "
                        "nozzle[mm]\n" % (var['P_value'], var['S_value'], line_thickness, var['nozzle_W']))
            f.write("G1 X%g Y%g E1 F%g\n\n" % (xy[0], xy[1], var['speed']))
    f.write("; PRINTING : FINALIZATION\n"
            "G0 Z50 ; go up Z[mm]\n\n"
            "M721 S10000 E99999 P6000 I0 T12 ; unprime\n"
            "G4 P1000 ; wait P[ms]\n"
            "M721 S10000 E99999 P6000 I0 T12 ; unprime\n"
            "G4 P10000 ; wait P[ms]\n\n"
            "G53 ; clear offsets\n"
            "M30 ; end of program")  # printing start-up
    f.close()
    return
