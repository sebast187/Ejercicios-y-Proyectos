clear all;
clc;

c = [1, 5, 3];
d = [2, 10, 20];
x = [4, 4, 1];
for i = 1:3
    p(i,:) = ((c(i) * x(i)) + (2 * d(i))) / ((c(i) * x(i)) - d(i));
end
p

x = [2, 10, 25];
y = [4, 5, -2];
z = [3, 9, -1.5];
for i = 1:3
    q(i,:) = (2 * (log10(x(i)))) + (cos(pi)) + (abs((y(i)^2) - (z(i)^2))) + (sqrt(5 * y(i) * z(i)));
end
q

l = 0.01;
r = 100;
for c = 0.1:0.1:1
    f(round(c*10),:) = sqrt((1 / (l * c)) - ((r^2) / (4 * (c^2))));
end
f