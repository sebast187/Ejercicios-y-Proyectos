                        %% Actividad 3 %%
% Sebastián Quevedo
% A01722937

clear;
clc;

%% Ejemplo: Método Newton-Raphson

% Variables Numéricas Regulares
x = 2;
y = 3;

% Operaciones Numéricas
resultado = x + y;
disp(resultado)

%

syms x
% Definir función y rango de valores a graficar
f = x.^2 - 4*x + 2;
a = -2:0.1:6;

y = double(subs(f, a));
% Graficar
figure(1)
plot(a, y)
xlabel('X')
ylabel('Y')
title('Gráfica x^2 - 4*x + 2')
xline(0)
yline(0)
grid on



% Inicializar variables y derivada de la función f
xi = 6;
tolerancia = 1e-6; % Tolerancia para convergencia
fdx = diff(f); % Derivada
iter = 0;

% Proceso
while true
    xi_nuevo = double(xi - (subs(f, xi) / subs(fdx, xi)));
    if abs(xi_nuevo - xi) < tolerancia || iter >= 30
        break;
    end
    xi = xi_nuevo;
    iter = iter + 1;
    raiz = double(subs(f, xi));
end

% Marcar la raiz en la gráfica
hold on
plot(xi, raiz, 'o', 'MarkerSize',10, 'LineWidth',2)

