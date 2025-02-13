clc;
clear all;

84 + 56

a = 84;
b = 56;
d = 1;

% Se vuelve impráctico ya que si se modifica, es muy tardado
C = a + b

% Resultado = f_suma(a, b)
% Resultado = f_suma(90, a)

[Resultado_S] = fop(a, b)
[Resultado_S,Resultado_R,Resultado_M] = fop(45, d)



%% 

% function [C] = f_suma(a, b)
% C = a + b;
% 
% end

function[RS,RR,RM] = fop(a, b)

RS = a+b;
RR = a-b;
RM = a*b;

end