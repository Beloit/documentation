import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('TestBot', 'r1neazxo9w')

trace1 = Scatter(
    x=[0, 1, 2, 3, 4, 5, 6, 7, 8],
    y=[8, 7, 6, 5, 4, 3, 2, 1, 0]
)
trace2 = Scatter(
    x=[0, 1, 2, 3, 4, 5, 6, 7, 8],
    y=[0, 1, 2, 3, 4, 5, 6, 7, 8]
)
data = Data([trace1, trace2])
layout = Layout(
    xaxis={'ticks': 'outside', 'tickwidth': 4, 'tick0': 0, 'ticklen': 8, 'dtick': 0.25, 'tickcolor': '#000', 'autotick': False},
    yaxis={'ticks': 'outside', 'tickwidth': 4, 'tick0': 0, 'ticklen': 8, 'dtick': 0.25, 'tickcolor': '#000', 'autotick': False}
)
fig = Figure(data=data, layout=layout)

plot_url = py.plot(fig, filename='axes-ticks', auto_open=False)