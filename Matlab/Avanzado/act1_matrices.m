clear;
clc;

%% Ejercicio 1:

fprintf('Ejercicio 1:\n\n')

matrizA = randi([-2, 5], 3, 4);
disp(matrizA)

pause(1)
matrizA(3, 2) = 20;
disp(matrizA)

pause(1)
matrizA(2,:) = [];
disp(matrizA)

pause(1)
matrizA = matrizA';
disp(matrizA)

pause(2)

%% Ejercicio 2:

A = [2 0 1; 2 1 2];
B = [3 2 4; -2 4 5; 0 3 -2];
[rA, cA] = size(A);
[rB, cB] = size(B);
sumAB = zeros(2, 3);

if rA == cB || rB == cB
    for renA = 1:rA
        for col = 1:cB
            for ren = 1:rB
                
                sumAB(renA, col) = sumAB(renA, col) + (A(renA, ren) * B(ren, col));
                
            end
        end
    end
else
    fprintf('Error')
end

fprintf('\nEjercicio 2:\n\n')
disp(sumAB)