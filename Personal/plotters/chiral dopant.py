from matplotlib import pyplot as plt
import numpy as np
from matplotlib import cm

w = 'c$_d$'
x = [7, 6, 5]
y = [535, 645, 805]
xf = np.arange(4, 9, 0.1)
yf = 25 * xf ** 2 - 435 * xf + 2355
xm = 8.7
ym = 25 * xm ** 2 - 435 * xm + 2355
viridis = cm.get_cmap('viridis', 4)
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.sans-serif'] = ['CMU Serif']
z = np.polyfit(x, y, 2)
p = np.poly1d(z)
plt.plot(xf, yf, "--", color=viridis(1))
plt.scatter(x, y, color=viridis(0))
plt.scatter(xm, ym, color=viridis(2), marker="x", s=80)
plt.xlabel("c$_d$ [wt%]", fontsize=14)
plt.xlim([4, 9])
#plt.ylim([-2, 2.5])
plt.ylabel("λ$_m$$_a$$_x$ [nm]", fontsize=14)
plt.xticks(fontsize=14)
#plt.legend(fontsize=14)
plt.yticks(fontsize=14)
plt.grid()
plt.title("λ$_m$$_a$$_x$  = %.0f " % (z[0]) + str(w) + "$^2$ + %.0f " %( z[1]) + str(w) + " + %.0f" % (z[2]), fontsize='14')
plt.tight_layout()
plt.show()
