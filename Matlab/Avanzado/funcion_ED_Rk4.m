function [t, x, y, k] = funcion_ED_Rk4(f1, f2, ti, tf, x0, y0, h)

t = ti:h:tf;
n = length(t);
x(1) = x0;
y(1) = y0;

for i = 1:n - 1

    k11 = h * f1(t(i), x(i), y(i));
    k21 = h * f2(t(i), x(i), y(i));
    
    k12 = h * f1(t(i) + h/2, x(i) + k11/2, y(i) + k21/2);
    k22 = h * f2(t(i) + h/2, x(i) + k11/2, y(i) + k21/2);
    
    k13 = h * f1(t(i) + h / 2, x(i) + k12 / 2, y(i) + k22 / 2);
    k23 = h * f2(t(i) + h / 2, x(i) + k12 / 2, y(i) + k22 / 2);
    
    k14 = h * f1(t(i) + h, x(i) + k13, y(i) + k23);
    k24 = h * f2(t(i) + h, x(i) + k13, y(i) + k23);

    x(i + 1) = x(i) + (1/6)*(k11 + 2*k12 + 2*k13 + k14);
    y(i + 1) = y(i) + (1/6)*(k21 + 2*k22 + 2*k23 + k24);

    k = [k11 k12 k13 k14 ; k21 k22 k23 k24];

end

end