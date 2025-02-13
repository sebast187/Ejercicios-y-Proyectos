clc;
clear;
%Condición inicial
y0 = 22*sin(deg2rad(42));
%Tiempo de integración
ti = 0; %tiempo inicial
tf = y0/4.905; %tiempo final
h = 0.1; %paso de tiempo
t = (ti:h:tf); %vector de tiempo
T = numel(t);
x=-9.81;
%número de elementos en el vector del tiempo
%Solución numérica
posi=0;
posaprox= [posi,zeros(1,T-1)];
yAprox = [y0,zeros(1,T-1)];
dydt = -9.81;
for i = 1:T-1
%Método de Euler
yAprox(i+1) = yAprox(i) + (dydt*h);
end
for i = 1:T-1
%Método de Euler
posaprox(i+1) = posaprox(i) + yAprox(i)*h;
end
yAprox
xb=y0;
xa = [0,zeros(1,T-1)];
for i = 1:T-1
%Método de Euler
xa(i+1)=xa(i)+xb*h;
end
xa
vel = [0,zeros(1,T-1)];
for i = 1:T-1
%Método de Euler
vel=22+x*h;
end
%Gráfica
tiledlayout(2,3)
nexttile
plot(t,dydt,'b','Marker','*','LineWidth',2);
%plot(t,-9.8,"r");
xlabel('Tiempo'); ylabel('y');
nexttile
plot(t,yAprox,'r','LineWidth',2);
%plot(t,vel,"b")
set(gcf,'color','w');
set(gca,'linew',1.5,'fontsize',16,'FontWeight','bold');
nexttile
plot(xa,posaprox,'g','LineWidth',2);