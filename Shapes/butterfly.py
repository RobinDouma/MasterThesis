import numpy as np
from matplotlib import pyplot as plt


def r(theta):
    r = 12 - np.sin(theta) + 2 * np.sin(3 * theta) + 2 * np.sin(5 * theta) - np.sin(7 * theta) + 3 * np.cos(2 * theta) -\
        2 * np.cos(4 * theta)
    return r


def xy(r, theta):
    x = r * np.cos(theta)
    y = r * np.sin(theta)
    vector = [x, y]
    return vector


theta = np.arange(0, 2 * np.pi, 0.01)
path = np.zeros([len(theta), 2])
line_spacing = 0.2
for i, t in enumerate(theta):
    path[i][:] = xy(r(t), t)
    print(r(t), xy(r(t), t))

bf = np.linspace(0.1, 1, 20)
plt.scatter(path[:, 0], path[:, 1])

for b in bf:
    plt.scatter((b * path[:, 0]), (b * path[:, 1]))
plt.show()
