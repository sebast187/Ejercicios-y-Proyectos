                        %% Actividad 1 %%
% Sebastián Quevedo
% A01722937

clear;
clc;

%% Ejemplo 1: Cuadrática

x = -10:0.01:10;

y = x.^2;

y2 = 2 * x.^2;

figure(1);
tiledlayout(2,2)
set(gcf,'color','w');

%Gráfica
nexttile
plot(x, y, 'r', 'LineWidth',2); hold on;
title('Curva ecuación cuadrática')
xlabel('x')
ylabel('y')
legend('x.^2', 'fontsize',14, 'FontWeight','bold', 'color',[0.9267 0.6285 0.6492]);

%Gráfica
nexttile
plot(x, y2); hold on;
title('Curva ecuación cuadrática')
xlabel('x')
ylabel('y')
legend('2 * x.^2', 'fontsize',14, 'FontWeight','bold', 'color',[0.5843 0.8157 0.9882]);


%% Ejemplo 2: Senoidal
x = -10:0.01:10;
y = sin(x);

%Gráfica
nexttile([1 2])
plot(x, y, 'LineWidth',2); hold on;
title('Curva ecuación senoidal')
xlabel('x')
ylabel('y')
legend('sin(x)', 'fontsize',14, 'FontWeight','bold', 'color',[0.7267 0.8285 0.9492]);


%% Ejercicio 1
t = 1:0.1:1000;

x = t.^2 + 2.*t;
y = t.^10 + t.^3 + t.^2 + t;
z = t;

%Gráfica
figure(2);
plot3(x, y, z, 'LineWidth',2); hold on;
title('Ejercicio 1','FontSize',18)
xlabel('x')
ylabel('y')
zlabel('z')
legend(' t', 'fontsize',18);


%% Ejercicio 2
t = 1:0.1:600;

x = t*5 - 10*t;
y = 2*t - 4;

%Gráfica
figure(3);
plot(x, y, 'LineWidth',2); hold on;
title('Ejercicio 2','FontSize',18)
xlabel('x')
ylabel('y')
legend(' t', 'fontsize',18);


%% Ejercicio 3
t = 0:0.001:12*pi;
a = 2;
b = 0.25;
w = 2;

x = a * cos(w * t);
y = a * sin(w * t);
z = b * t;

%Gráfica
figure(4);
plot3(x, y, z, 'LineWidth',2); hold on;
title('Ejercicio 3','FontSize',18)
xlabel('x')
ylabel('y')
zlabel('z')
legend(' t', 'fontsize',18);


%% Ejercicio 4
t = 0:0.001:2*pi;
a = 1;
b = 1;
u = 0:0.001:2*pi;

x = a .* cos(t) .* cos(u);
y = b .* cos(t) .* sin(u);
z = cos(t).^3;

%Gráfica
figure(5);
plot3(x, y, z, 'LineWidth',2); hold on;
title('Ejercicio 4','FontSize',18)
xlabel('x')
ylabel('y')
zlabel('z')
legend(' t', 'fontsize',18);


%% Ejercicio 5
t = 0:0.1:2*pi;

x = 4 * cos(t);
y = 3 * sin(t);

%Gráfica
figure(6);
plot(x, y, 'LineWidth',2); hold on;
title('Ejercicio 5','FontSize',18)
xlabel('x')
ylabel('y')
legend(' t', 'fontsize',18);


%% Ejercicio 6
esfera = @(x,y) (sqrt(9 - (x^2) - (y^2)));

%Gráfica
figure(7);
fsurf(esfera); hold on;
title('Ejercicio 6','FontSize',18)
xlabel('x')
ylabel('y')
zlabel('z')


%% Ejercicio 7

%Gráfica
figure(8);
for altura = 1:1.5:7.5
    rectangle('Position',[3 altura 1 1.2], 'Curvature',[1,1], 'FaceColor','r', 'EdgeColor',[0 0 1]);
    rectangle('Position',[6 altura 1 1.2], 'Curvature',[1,1], 'FaceColor','b', 'EdgeColor',[0 0 1]);
    axis([1 9 1 9])
end
hold on;
title('Ejercicio 7','FontSize',18)
xlabel('x')
ylabel('y')


%% Ejercicio 8
[x,y] = meshgrid (0:0.2:2,0:0.2:2);
u = cos(x) .*y;
v = sin(x) .*y;

%Gráfica
figure(9);
quiver(x,y,u,v,0.8,"filled",'Color','r', 'LineWidth',4, 'Marker','*')
title('Ejercicio 8','FontSize',18)
xlabel('x')
ylabel('y')

% Meshgrit genera una matriz de valores donde los identifica con un
% intervalo, además se utiliza este para quiver si quieres generar una
% gráfica que señala el movimiento de cualquier cosa, como fuerza de
% atracción, movimiento de algun fluido, entre otros. Sus parametros
% funcionan como (puntos en x, puntos en y, ecuaciones de vectores en x,
% ecuaciones de vectores en y), también se pueden agregar elementos como
% color o grosor con diferentes funciones como LineWidth, Color, Marker,
% etc.

