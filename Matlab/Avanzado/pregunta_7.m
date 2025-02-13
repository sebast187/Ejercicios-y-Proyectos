% Sebastián Quevedo
% A01722937

clc;
clear;


%% Examen Parcial - Pregunta 7:

t = 0:0.01:10;

x = t;
y = t.^2;

plot(x, y, 'LineWidth',2);
title('Examen Parcial - Pregunta 7:','FontSize',18)
xlabel('x','FontSize',18)
ylabel('y','FontSize',18)
legend('t', 'fontsize',18);