signin({% if username %}'{{username}}'{% else %}'MATLABAPI'{% endif %}, {% if api_key %}'{{api_key}}'{% else %}'jzt0hr6tzv'{% endif %})

x = -pi:pi/10:pi;
y = sin(x);
figure('Name', 'Sample graph'), plot(x, y, '--rs');
% Label some points
for i=8:size(x,2)-8
text(x(i), y(i), 'Text');
end

% PLOTLY 
response = fig2plotly();
plotly_url = response.url;
