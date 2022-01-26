import numpy as np

trajectory = []
q = []
with open('drawing-1.xyz', "r") as tF:
    line = tF.readline()
    line = tF.readline().strip().split(" ")
    for c in line[0:2]:
        if c != "":
            q.append(float(c))
trajectory.append(np.array(q))
line = tF.readline()

print(q)
plt.scatter(q[:, 0], q[:, 1])
plt.show()
