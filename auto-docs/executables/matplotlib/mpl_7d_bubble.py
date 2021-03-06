import matplotlib.pyplot as plt
import numpy as np
import plotly.plotly as py
py.sign_in('TestBot', 'r1neazxo9w')

n = 50
x, y, z, s, ew = np.random.rand(5, n)
c, ec = np.random.rand(2, n, 4)
area_scale, width_scale = 500, 5

fig, ax = plt.subplots()
sc = ax.scatter(x, y, s=np.square(s)*area_scale, c=c, edgecolor=ec, linewidth=ew*width_scale)
ax.grid()

plot_url = py.plot_mpl(fig, filename='mpl-7d-bubble')
