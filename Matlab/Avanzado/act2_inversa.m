clc;
clear;

m1 = [1 -1 1; 0 2 -1; 2 3 0];
vti1 = [-5; 2; -3];
det1 = det(m1)

m2 = [3 -6 7; 8 8 -1; 3 -3 8];
vti2 = [20; 60; 50];
det2 = det(m2)

m3 = [1 -1 1; 2 -2 2; 0 1 1];
vti3 = [6; 8; 1];
det3 = det(m3)


if det1 ~= 0
    fprintf('Se puede obtener inversa de matriz 1')
    solucion = m1\vti1;
    x1 = solucion(1);
    x2 = solucion(2);
    x3 = solucion(3);
    vti1
    disp(['x1 = ', num2str(x1)])
    disp(['x2 = ', num2str(x2)])
    disp(['x3 = ', num2str(x3)])

    % Comprobación
    ecuacion1 = (m1(1,1) * solucion(1)) + (m1(1,2) * solucion(2)) + (m1(1,3) * solucion(3));
    ecuacion2 = (m1(2,1) * solucion(1)) + (m1(2,2) * solucion(2)) + (m1(2,3) * solucion(3));
    ecuacion3 = (m1(3,1) * solucion(1)) + (m1(3,2) * solucion(2)) + (m1(3,3) * solucion(3));
    disp(ecuacion1)
    disp(ecuacion2)
    disp(ecuacion3)
else
    fprintf('\nLa matriz no tiene inversa')
end


%%
if det2 ~= 0
    fprintf('\nSe puede obtener inversa de matriz 2')
    solucion = m2\vti2;
    x = solucion(1);
    y = solucion(2);
    z = solucion(3);
    vti2
    disp(['x = ', num2str(x)])
    disp(['y = ', num2str(y)])
    disp(['z = ', num2str(z)])

    % Comprobación
    ecuacion1 = (m2(1,1) * solucion(1)) + (m2(1,2) * solucion(2)) + (m2(1,3) * solucion(3));
    ecuacion2 = (m2(2,1) * solucion(1)) + (m2(2,2) * solucion(2)) + (m2(2,3) * solucion(3));
    ecuacion3 = (m2(3,1) * solucion(1)) + (m2(3,2) * solucion(2)) + (m2(3,3) * solucion(3));
    disp(ecuacion1)
    disp(ecuacion2)
    disp(ecuacion3)
else
    fprintf('\nLa matriz 2 no tiene inversa')
end


%%
if det3 ~= 0
    fprintf('\nSe puede obtener inversa de matriz 3')
    solucion = m3\vti3;
    x = solucion(1);
    y = solucion(2);
    z = solucion(3);
    vti3
    disp(['x = ', num2str(x)])
    disp(['y = ', num2str(y)])
    disp(['z = ', num2str(z)])

    % Comprobación
    ecuacion1 = (m3(1,1) * solucion(1)) + (m3(1,2) * solucion(2)) + (m3(1,3) * solucion(3));
    ecuacion2 = (m3(2,1) * solucion(1)) + (m3(2,2) * solucion(2)) + (m3(2,3) * solucion(3));
    ecuacion3 = (m3(3,1) * solucion(1)) + (m3(3,2) * solucion(2)) + (m3(3,3) * solucion(3));
    disp(ecuacion1)
    disp(ecuacion2)
    disp(ecuacion3)
else
    fprintf('\nLa matriz 3 no tiene inversa')
end
