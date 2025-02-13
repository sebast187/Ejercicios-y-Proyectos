clear;
clc;

%% Campo Eléctrico: Cilindros
[x,y] = meshgrid (-2:0.1:2,-2:0.1:2);
o = 0.000000005;
p = 0.000000030;
e = 0.00000000000885;
h = 1;

u = (0.5 * o * e).*x;
v = (0.5 * o * e).*y;

%Gráfica
figure(3);
quiver(x,y,u,v,1, 'Color','b','LineWidth',3)
hold on

u = ((p * h)/(4 * e)).*x + 0.1;
v = ((p * h)/(4 * e)).*y + 0.1;
quiver(x,y,u,v,1, 'Color','g','LineWidth',1.5)

rectangle('Position',[-0.5 -0.6 1 1.2], 'Curvature',[1,1], 'EdgeColor', 'r', 'LineWidth', 2);
rectangle('Position',[-0.25 -0.3 0.5 0.6], 'Curvature',[1,1], 'EdgeColor', 'r', 'FaceColor', 'r');
xlabel('x')
ylabel('y')




%% Voltaje como función (p) de Tiempo
p = @(t) (48.*t);
t = 0:0.01:0.25;
v = p(t);

figure(1)
plot(t, v)
xline(0)
yline(0)
xlabel('tiempo')
ylabel('Voltaje')
grid on
hold on


%% Raiz de la Carga
f = @(x) ((2/3)*(x.^2) - 4.*x + 4);
x = 0:0.1:2;
y = f(x);

figure(2)
plot(x, y)
xline(0)
yline(0)
xlabel('x')
ylabel('f(x)')
title('Ejemplo: Gráfica (2/3)*(x.^2) - 4.*x + 4')
grid on

% Definimos Intervalos
xi = 0;
xf = 2;
raiz = NaN;

if f(xi) * f(xf) < 0
    for iteraciones = 1:10
        xa = (xi + xf) / 2;
        fxi_fxa = f(xi) * f(xa);

        if fxi_fxa < 0
            xf = xa;

        else
            xi = xa;

        end
    end
    raiz = f(xa);

    xa = (xi + xf) / 2;

    hold on;
    plot(xa, raiz, 'or')
end

disp(['Raiz: (' num2str(round(xa, 2)) 'm, 0m)'])