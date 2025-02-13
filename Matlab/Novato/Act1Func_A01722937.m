clear all;
clc;

c = [1, 5, 3];
d = [2, 10, 20];
x = [4, 4, 1];
for i = 1:3
    p(i,:) = f_p(c(i),d(i),x(i));
end
p

x = [2, 10, 25];
y = [4, 5, -2];
z = [3, 9, -1.5];
for i = 1:3
    q(i,:) = f_q(x(i),y(i),z(i));
end
q

l = 0.01;
r = 100;
for c = 0.1:0.1:1
    f(round(c*10),:) = f_f(l,r,c);
end
f

figure
theta = 0 : 0.01 * pi : 2 * pi;
polarplot(theta, f_r(theta))



%% 

function [p] = f_p(c,d,x)
p = ((c * x) + (2 * d)) / ((c * x) - d);

end

function [q] = f_q(x,y,z)
q = (2 * (log10(x))) + (cos(pi)) + (abs((y^2) - (z^2))) + (sqrt(5 * y * z));

end

function [f] = f_f(l,r,c)
f = sqrt((1 / (l * c)) - ((r^2) / (4 * (c^2))));

end

function [r] = f_r(theta)
r = 3 * cos(5 * theta);

end
