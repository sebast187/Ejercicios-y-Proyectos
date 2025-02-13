function [raices] = funcion_raices_polinomios(A)

raices = [];
termInd = A(end);
divs = divisors(termInd);
divs = [divs divs*-1];
nuevaA = A;

for i = 1:(length(divs))
    
    A = nuevaA;
    
    for l = 1:(length(nuevaA))
        if l == 1

        else
            
            nuevaA(l) = nuevaA(l) + (nuevaA(l - 1) * divs(i));
            
        end
    end

    if nuevaA(end) == 0 % residuo
        raices(end+1) = divs(i);
        nuevaA(end) = [];
    else
        nuevaA = A;
    end
    
end