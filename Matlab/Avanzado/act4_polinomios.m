                        %% Actividad 4 %%
% Sebastián Quevedo
% A01722937

clear all;
clc;
close;

%% Ejemplo:

f1 = @(x) (x.^3 - 6*(x.^2) + 11.*x - 6);
x = -1:0.1:5;
plot(x, f1(x))
xline(0)
yline(0)
xlabel('x')
ylabel('f1(x)')
title('Polinomio x.^3 - 6*(x.^2) + 11.*x - 6')
grid on
hold on

A = [1 -6 11 -6]; % Coeficientes x.^3 - 6*(x.^2) + 11.*x - 6
r = funcion_raices_polinomios(A); % Llamado a la función
disp('Las raices son = ')
disp(r)

% Evalua las raices con el polinomio
a = f1(r);

% Graficar raices
plot(r, a, 'or')