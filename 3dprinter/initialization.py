def variables_rectangle_first(var):
    """"This function asks the variables as input from the user and returns this as a dictionary"""
    ans = ""  # empty variable for the input
    for v in var:  # prints all variables
        print(v, ": ", var[v])
    while ans != "q":  # asks user if a variable value needs to be changed
        ans = input("\nWhich variable do you want to change?\nGive key, press q if okay.\n")
        # in case an existing variable value needs to be changed
        if (ans != 'q') & (ans in var.keys()):
            if isinstance(var[ans], str):  # for changing a string containing variable
                var[ans] = input("Enter new value\n")
            elif isinstance(var[ans], int) | isinstance(var[ans], float):  # for changing an int/float type value
                int_or_float = input("Enter new value\n")
                try:  # makes sure int input is saved as int value (else string)
                    var[ans] = int(int_or_float)
                except ValueError:  # makes sure float input is saved as float value (else string or error)
                    var[ans] = float(int_or_float)
            else:  # for changing an array
                try:  # in case proper input is given for side
                    side = int(input("Which speed (multiplier) changes?\n0 = bottom, 1 = right, 2 = top or 3 = left\n"))
                    speed = input("What speed (multiplier) in mm/min (#) would you like?\n")
                    try:  # makes sure int input is saved as int value (else string)
                        var[ans][side] = int(speed)
                    except ValueError:  # makes sure float input is saved as float value (else string or error)
                        var[ans][side] = float(speed)
                except (ValueError, IndexError):  # in case wrong input is given for side
                    side = int(input("\nUse 0, 1, 2 or 3 for side and number for speed (multiplier). LAST TRY!\n"
                                     "So: what side do you want to change?"))
                    speed = input("What speed (multiplier) in mm/min (#) would you like? LAST TRY!\n")
                    try:  # makes sure int input is saved as int value (else string)
                        var[ans][side] = int(speed)
                    except ValueError:  # makes sure float input is saved as float value (else string or error)
                        var[ans][side] = float(speed)
            for v in var:  # prints the variables for the user after if loop
                print(v, ": ", var[v])
        elif (ans != 'q') & (ans not in var.keys()):  # in case of wrong/non-existing variable is given
            for v in var:  # prints the variables for the user after elif loop
                print(v, ": ", var[v])
            print("\nThat was not a variable\n")  # indicates the user wrong input was given
        else:  # in case q is given and variables are to satisfaction
            break
    return var


def variables_rectangle_more(var):
    """"This function asks what variables need to change for this nth print."""
    ans = ""  # empty variable for the input
    try:
        x_new = int(input("\nWhere do you want to put your next print in the x direction?\nTo the right, type: 1\n"
                          "To the left, type: -1\nSame x-coordinate, type: 0\n"))
        y_new = int(input("\nWhere do you want to put your next print in the y direction?\nUpwards, type: 1\n"
                          "Downwards, type: -1\nSame y-coordinate, type: 0\n"))
    except ValueError:
        x_new = int(input("\nWhere do you want to put your next print in the x direction?\nTo the right, type: 1\n"
                          "To the left, type: -1\nSame x-coordinate, type: 0\nLAST TRY!\n"))
        y_new = int(input("\nWhere do you want to put your next print in the y direction?\nUpwards, type: 1\n"
                          "Downwards, type: -1\nSame y-coordinate, type: 0\nLAST TRY!\n"))
    var['x0'] = x_new * (var['x_length'] + var['offset'] + var['offset']) + var['x0']
    var['y0'] = y_new * (var['y_length'] + var['offset']) + var['y0']
    for v in var:  # prints all variables
        print(v, ": ", var[v])
    while ans != "q":  # asks user if a variable value needs to be changed
        ans = input("\nWhich variable do you want to change?\n"
                    "(x0 and y0 have been estimated for you already)\nGive key, press q if okay.\n")
        # in case an existing variable value needs to be changed
        if (ans != 'q') & (ans in var.keys()):
            if isinstance(var[ans], str):  # for changing a string containing variable
                var[ans] = input("Enter new value\n")
            elif isinstance(var[ans], int) | isinstance(var[ans], float):  # for changing an int/float type value
                int_or_float = input("Enter new value\n")
                try:  # makes sure int input is saved as int value (else string)
                    var[ans] = int(int_or_float)
                except ValueError:  # makes sure float input is saved as float value (else string or error)
                    var[ans] = float(int_or_float)
            else:  # for changing an array
                try:  # in case proper input is given for side
                    side = int(input("Which speed (multiplier) changes?\n0 = bottom, 1 = right, 2 = top or 3 = left"))
                    speed = input("What speed (multiplier) in mm/min (#) would you like?\n")
                    try:  # makes sure int input is saved as int value (else string)
                        var[ans][side] = int(speed)
                    except ValueError:  # makes sure float input is saved as float value (else string or error)
                        var[ans][side] = float(speed)
                except (ValueError, IndexError):  # in case wrong input is given for side
                    side = int(input("\nUse 0, 1, 2 or 3 for side and number for speed (multiplier). Else: an error!\n"
                                     "So: what side do you want to change?"))
                    speed = input("What speed (multiplier) in mm/min (#) would you like?\n")
                    try:  # makes sure int input is saved as int value (else string)
                        var[ans][side] = int(speed)
                    except ValueError:  # makes sure float input is saved as float value (else string or error)
                        var[ans][side] = float(speed)
            for v in var:  # prints the variables for the user after if loop
                print(v, ": ", var[v])
        elif (ans != 'q') & (ans not in var.keys()):  # in case of wrong/non-existing variable is given
            for v in var:  # prints the variables for the user after elif loop
                print(v, ": ", var[v])
            print("\nThat was not a variable\n")  # indicates the user wrong input was given
        else:  # in case q is given and variables are to satisfaction
            break
    return var
