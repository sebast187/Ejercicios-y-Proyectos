clear all;
clc;
% c = 1;
% d = 2;
% x = 4;
% p = ((c*x)+(2*d))/((c*x)-d)
% c = 5;
% d = 10;
% x = 4;
% p = ((c*x)+(2*d))/((c*x)-d)
c = [1, 5, 3];
d = [2, 10, 20];
x = [4, 4, 1];
for i = 1:3
    p = ((c(i) * x(i)) + (2 * d(i))) / ((c(i) * x(i)) - d(i))
end

for i = 1:0.5:10
i
end