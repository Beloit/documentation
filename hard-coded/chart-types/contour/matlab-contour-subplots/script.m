signin('', '')

%
[X,Y,Z] = peaks;
contour(X,Y,Z,20)

% PLOTLY
response = fig2plotly();
plotly_url = response.url
