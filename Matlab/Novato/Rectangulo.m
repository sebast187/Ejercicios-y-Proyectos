clc


a = 1;

b = 5;

n = 5;

% Consigue las iteraciones de 'n' y su cambio entre a y b que es 0.2
DeltaX = (b - a) / n;

Sfx = 0;

NInteraccion = 1;


for i = a:DeltaX:b
    % Asigna xi en cada iteración el valor de 'i' (la razón de cambio)
    xi(NInteraccion) = i;



    if NInteraccion == 1
        % Crea Mxi con 0 como su valor inicial
        Mxi(NInteraccion) = 0;

    else
        % Agarra el promedio de la 'xi' y su 'xi' anterior
        Mxi(NInteraccion) = ((xi(NInteraccion) + xi(NInteraccion - 1)) / 2);

    end



    if NInteraccion == 1
        % Crea fx con 0 como su valor inicial
        fx(NInteraccion) = 0;

    else
        % Asigna 'x' como el valor promedio (Mxi)
        x = Mxi(NInteraccion);

        % Usa 'fx' como la salida de la función para la altura (con 'x' como su valor de x)
        fx(NInteraccion) = ((x^2)*(log(x)));

        % Agrega el valor de 'fx' para un valor total
        Sfx = Sfx + fx(NInteraccion);

    end


    % Sigue con la repetición
    NInteraccion = NInteraccion + 1;

end


xi

Mxi

fx 

Sfx

% Multiplica todos los valores de 'fx' (Sfx) con deltaX para el area total
Resultado = DeltaX * Sfx
% % 


