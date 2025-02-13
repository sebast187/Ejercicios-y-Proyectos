%% Ejemplo: Método Newton-Raphson
fx = @(x) (x.^2 - 4.*x + 2);
f_x = @(x) (2.*x - 4);

xi = 4;

for iteraciones = 1:5
    xi = xi - (f(xi) / f_x(xi));
end

raiz = xi;