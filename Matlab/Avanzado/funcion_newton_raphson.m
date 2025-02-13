function [raiz, xi, iter] = funcion_newton_raphson(f, fdx, xi, tolerancia)

iter = 0;
while true
    xi_nuevo = double(xi - (subs(f, xi) / subs(fdx, xi)));
    if abs(xi_nuevo - xi) < tolerancia || iter >= 30
        break;
    end
    xi = xi_nuevo;
    iter = iter + 1;
    raiz = double(subs(f, xi));
end