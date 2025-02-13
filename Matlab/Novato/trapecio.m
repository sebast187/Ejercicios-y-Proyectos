clc;

fprintf('\\REGLA DEL TRAPECIO')
f = '(x^2)*(log(x))'

b = 5; % input('ingrese el limite superiór de la integral \n')

a = 1; % input('ingrese el limite inferior de la integral \n')

n = 5; % input('ingrese el numero de intervalos \n')


% Consigue las iteraciones de 'n' y su cambio entre a y b
h = (b - a) / n;

g = inline(f);

s = 0;

figure
hold on


for i = 1:n

    s = h / 2 * (g(a + (i - 1) * h) + g(a + (i) * h)) + s;

    fprintf('El area aproximada es: %10.15f\n\n',s);

end




g = str2sym(f);
x1 = linspace(a,b,n);
y1 = subs(g,x1);

bar(x1,y1)
xlabel('Eje X')
ylabel('Eje Y')
title('Regla del Trapacio','color','b')
plot(x1,y1,'red','LineWidth',3)
hold off
