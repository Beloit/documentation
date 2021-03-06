signin({% if username %}'{{username}}'{% else %}'MATLABAPI'{% endif %}, {% if api_key %}'{{api_key}}'{% else %}'jzt0hr6tzv'{% endif %})

zeta = [0.01 .02 0.05 0.1 .2 .5 1 ];
colors = ['r' 'g' 'b' 'c' 'm' 'y' 'k'];

w = logspace(-1, 1, 1000);

figure;
for i = 1:7
    a = w.^2 - 1;
    b = 2*w*zeta(i);
    gain = sqrt(1./(a.^2 + b.^2));
    loglog(w, gain, 'color', colors(i), 'linewidth', 2);
    hold on;
end

% Set the axis limits
axis([0.1 10 0.01 100]);

% title and labels
title('|G|[omega]  vs omega');
xlabel('omega');
ylabel('|G|[omega]');

%--PLOTLY--%

% Strip MATLAB style by default!
response = fig2plotly(gcf, 'filename', '>>>filename<<<');
plotly_url = response.url;
