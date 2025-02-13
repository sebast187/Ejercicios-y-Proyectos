function [x, y] = funcion_Rk2(f, a, b, y0, h)

x = a:h:b;
n = length(x);
y(1) = y0;

for i = 1:n - 1

    k1 = h * f(x(i), y(i))
    k2 = h * f(x(i) + h/2, y(i) + k1/2)
    y(i + 1) = y(i) + k2

end

end