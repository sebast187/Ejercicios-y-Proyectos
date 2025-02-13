clc;
clear; 
%%%%%%%%%%%---Método de Euler---%%%%%%%%%%% 
%Condición inicial 
y0 = 1; 
%Tiempo de integración 
ti = 0; %tiempo inicial 
tf = 1; %tiempo final 
h = 0.2; %paso de tiempo 
t = (ti:h:tf); %vector de tiempo 
T = numel(t); %número de elementos en el vector del tiempo  


%Solución numérica 
yAprox = [y0,zeros(1,T-1)]
dydt = zeros(1,T)


for i = 1:T-1
     %Ecuación diferencial
     dydt(i) = yAprox(i)*t(i)^3-1.1*yAprox(i);
     %Método de Euler
     yAprox(i+1) = yAprox(i) + dydt(i)*h; 
end

yAprox
dydt

%Solución exacta
 tex = (ti:0.02:tf);
 yExacta = exp(0.25*tex.^4-1.1*tex);


 %Gráfica
 plot(t,yAprox,'b','Marker','*','LineWidth',2); hold on;
 plot(tex,yExacta,'r','LineWidth',2);
 legend('y_{Aprox} (Euler)-> h = 0.2','y_{Exacta}','fontsize',14,'FontWeight','bold');
 xlabel('Tiempo'); ylabel('y');  
 set(gcf,'color','w'); 
 set(gca,'linew',1.5,'fontsize',16,'FontWeight','bold'); box off; 
 








