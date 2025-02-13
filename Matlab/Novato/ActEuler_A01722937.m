clc;
clear; 
    %%%-Sebastián Quevedo A01722937-%%%
%%%%%%%%%%%---Método de Euler---%%%%%%%%%%% 
%Condición inicial 
x0 = 5; 
%Tiempo de integración 
ti = 0; %tiempo inicial 
tf = 30; %tiempo final 
h = 2; %paso de tiempo 
t = (ti:h:tf); %vector de tiempo 
T = numel(t); %número de elementos en el vector del tiempo  


%Solución numérica 
xAprox = [x0,zeros(1,T-1)]
dxdt = zeros(1,T)


for i = 1:T-1
     %Ecuación diferencial
     dxdt(i) = 10 - sqrt(xAprox(i));
     %Método de Euler
     xAprox(i+1) = xAprox(i) + dxdt(i)*h; 
end

xAprox
dxdt

%Solución exacta
 %tex = (ti:h:tf);
 %xExacta = exp(0.25*tex.^4-1.1*tex);


 %Gráfica
 plot(t,xAprox,'m','Marker','*','LineWidth',2); hold on;
 %plot(tex,xExacta,'r','LineWidth',2);
 legend('x_{Aprox} (Euler)-> h = 0.2','fontsize',14,'FontWeight','bold','color', [0.5843 0.8157 0.9882]);
 xlabel('Tiempo','color','w'); ylabel('x','color','w');  
 set(gcf,'color','b'); 
 set(gca,'color','c','linew',1.5,'fontsize',16,'FontWeight','bold'); box off; 
 








