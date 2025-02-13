clear;
clc;

%% Regresión no Lineal %%

% 1. Leer archivo ‘PuntosEntrenaCurva1.csv’
% 2. Guardar primer renglón en x y segundo renglón en y
% 3. Leer archivo ‘PuntosPruebaCurva1.csv’
% 4. Guardar primer renglón en x2 y segundo renglón en y2
% 5. Graficar nube de datos de x contra y
% 6. Cálculo del polinomio de ajuste de grado (?)
% 7. En la variable yy guardar la evaluación del polinomio en cada punto de x
% 8. Graficar el polinomio de ajuste respecto a x
% 9. Calcular el error cuadrático medio de y – yy
% 10. Graficar nube de datos de x2 contra y2
% 11. En la variable yy2 guardar la evaluación polinomio en cada punto de x2
% 12. Graficar el polinomio de ajuste del paso anterior respecto a x2
% 13. Calcular el error cuadrático medio y2 – yy2

%% Actividad 4:

% Grado del polinomio
for n = 1:5

% Archivo de Entrenamiento:
matriz_datos_1 = readmatrix('PuntosEntrenaCurva1.csv');
% Archivo de Prueba:
matriz_datos_2 = readmatrix('PuntosPruebaCurva1.csv');

% Separando los vectores de la matrix de datos
x1 = matriz_datos_1(1,:);
y1 = matriz_datos_1(2,:);
x2 = matriz_datos_2(1,:);
y2 = matriz_datos_2(2,:);

% Polinomio (p) y Vector Ajustado (yy)
p1 = polyfit(x1, y1, n);
yy1 = polyval(p1, x1);
p2 = polyfit(x2, y2, n);
yy2 = polyval(p2, x2);

% Error cuadrático medio
error1 = mse(y1-yy1);
disp(['Error cuadrático medio: ',num2str(error1)])
error2 = mse(y2-yy2);
disp(['Error cuadrático medio: ',num2str(error2)])

if n == 1
plural = '';
else
plural = 's';
end

% Gráficas
figure(n)
t = tiledlayout(1,2,'TileSpacing','Compact');
title(t, ['Regresión no Lineal: ', num2str(n), ' Grado', plural])

nexttile
plot(x1, y1, 'og', 'LineWidth',2)
hold on
plot(x1, yy1, '-k')
title('Datos de Entrenamiento')
legend('Datos exactos', 'Grafica ajustada')
xlabel('x')
ylabel('y')

nexttile
plot(x2, y2, 'oc', 'LineWidth',2)
hold on
plot(x2, yy2, '-k')
title('Datos de Prueba')
legend('Datos exactos', 'Grafica ajustada')
xlabel('x')
ylabel('y')

fprintf(['\nPodemos determinar que el polinomio de grado grado 5 es el que ' ...
    'mejor se ajusta a los datos dados\n\n\n'])
end







