clc
a = 1;
b = 5;
n = 4;
Delta = (b - a) / n; % 0.25
Sumatoria = 0;
f = '(x^2)*(log(x))','s';
g = inline(f);
NI = 1;
for i = a:Delta:b
   xi(NI) = i;  

   if(mod((NI-1), 2)) == 0 

    if (xi(NI)) == a || (xi(NI)) == b
        fx = g(xi(NI));
        Sumatoria = Sumatoria + fx;
    else
          fx = 2 * (g(xi(NI)));
        Sumatoria = Sumatoria + fx;
    end
   else
fx = 4 * (g(xi(NI)));
        Sumatoria = Sumatoria + fx;
   end
  NI = NI + 1;
end
Sumatoria
Resultado = (Delta / 3) * Sumatoria



