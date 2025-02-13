function [x, y] = funcion_euler(f, a, b, y0, h)

x = a:h:b;
n = length(x);
y = zeros(1, n);
y(1) = y0;

for i = 1:n - 1

    y(i + 1) = y(i) + f(x(i) , y(i)) * h;

end

end