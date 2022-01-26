import numpy as np
from matplotlib import pyplot as plt


def xy(a, theta):
    x = a * np.cos(theta) - (a * np.sin(theta)**2) / np.sqrt(2)
    y = a * np.sin(theta) * np.cos(theta)
    vector = [x, y]
    return vector


theta = np.arange(0, 2 * np.pi, 0.01)
path = np.zeros([len(theta), 2])
line_spacing = 0.2
a = 1
for i, t in enumerate(theta):
    path[i][:] = xy(a, t)
    print(a, xy(a, t))

bf = np.linspace(0.1, 1, 1)
plt.scatter(path[:, 0], path[:, 1])

for b in bf:
    plt.scatter((b * path[:, 0]), (b * path[:, 1]))
plt.show()
