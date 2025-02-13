clear all;
clc;

% Vectores de posición para los puntos de impacto
VtScat_x = [];
VtScat_y = [];

for n=1:30

    figure(1);
    [Xp, Zp] = meshgrid(linspace (-2500, 2500, 25));
    Yp = 1247 * exp(-((Xp .^ 2) ./ (2*1250^2) + (Zp .^ 2) ./ (2*1250^2) ));
    surf(Xp,Zp,Yp,FaceAlpha=0.4);
    hold on

    figure(2);
    [Xp, Zp] = meshgrid(linspace (-2500, 2500, 25));
    Yp = 1247 * exp(-((Xp .^ 2) ./ (2*1250^2) + (Zp .^ 2) ./ (2*1250^2) ));
    surf(Xp,Zp,Yp,FaceAlpha=0.4);
    hold on

    %Pidiendo al usuario la velocidad inicial y el angulo de lanzamiento de un
    %proyectil
    Vy=randi([0,150],1,1);
    Vx=randi([-25,25],1,1);
    Vz=randi([-25,25],1,1);
    coearr=0.1*rand(); 
    masa=1;

    %Inicializar vectores de posiciones X y Y
    X=[];
    Y=[];
    Z=[];
    T=[];
    PosF_z=[];
    PosF_x=[];

    %Inicializar vector de velocidades en Y y en X 
    VYs=[];
    VXs=[];
    VZs=[];

    peso=masa*-9.8;

    %Crear delta tiempo desde 0 hasta el tiempo de vuelo
    dt=0.1;
    
    %Datos iniciales
    posicion_Y=(1247-85);
    Y=[Y posicion_Y];
    Ay=-9.8;
    FDy=0;
    VYs=[VYs Vy];
    
    posicion_X=randi([-460,460],1,1);
    X=[X posicion_X];
    Ax=0;
    FDx=0;
    VXs=[VXs Vx];

    posicion_Z=randi([-460,460],1,1);
    Z=[Z posicion_Z];
    Az=0;
    FDz=0;
    VZs=[VZs Vz];
    
    Y=[Y posicion_Y];
    X=[X posicion_X];
    Z=[Z posicion_Z];

    %Valores para el tiempo
    tiempo= 0;
    T=[T tiempo];

    %Desplegamos
    %                T       Vx      Vy         X        Y                                  
    %fprintf('\n    %0.5f   %0.5f    %0.5f     %0.5f    %0.5f  \n',tiempo,Vx,Vy,posicion_X,posicion_Y);
    
    
    %Valor que determina si se considera la fuerza de arrastre o no
    drag = 1;

    if drag == 1
        for i=dt:dt:1000
             Vyi=Vy;
             tiempo=tiempo+dt;
             FDy=-coearr*Vy/masa;
             Ay=(FDy+peso)/masa;
             Vy=Vy+(dt*Ay);
             posicion_Y= posicion_Y+(Vy*dt);
             
             FDx=-coearr*Vx/masa;
             Ax=FDy/masa;
             Vx=Vx+(dt*Ax);
             posicion_X= posicion_X+(Vx*dt);
            
             %Agregar Z formulas
             FDz=-coearr*Vz/masa;
             Az=FDz/masa;
             Vz=Vz+(dt*Az);
             posicion_Z= posicion_Z+(Vz*dt);
             T=[T tiempo];
    
             
             %Desplegamos
             %                T       Vx      Vy         X       Z        Y                                  
             %fprintf('\n    %0.5f   %0.5f    %0.5f     %0.5f   %0.5f    %0.5f  \n',tiempo,Vx,Vy,posicion_X,posicion_Z,posicion_Y);
            
             Y=[Y posicion_Y];
             VYs=[VYs Vy];
             X=[X posicion_X];
             VXs=[VXs Vx];
             Z=[Z posicion_Z];
             VZs=[VZs Vz];
    
             Yp = (1247 - 85) * exp(-((posicion_X .^ 2) ./ (2*1250^2) + (posicion_Z .^ 2) ./ (2*1250^2) ));
             diferencia=posicion_Y-Yp;
    
             if diferencia<=0
                 PosF_z=[PosF_z posicion_Z];
                 PosF_x=[PosF_x posicion_X];
                 break 
             end
     
             if posicion_Y<=0 
                 break 
             end 

             if Vy < Vyi && Vy > -1
                 maxPnt = posicion_Y;
             end
        end 
    else
        for i=dt:dt:1000
             Vyi=Vy;
             tiempo=tiempo+dt;
             Ay=peso/masa;
             Vy=Vy+(dt*Ay);
             posicion_Y= posicion_Y+(Vy*dt);
             
             posicion_X= posicion_X+(Vx*dt);
            
             %Agregar Z formulas
             posicion_Z= posicion_Z+(Vz*dt);
             T=[T tiempo];
    
             
             %Desplegamos
             %                T       Vx      Vy         X       Z        Y                                  
             %fprintf('\n    %0.5f   %0.5f    %0.5f     %0.5f   %0.5f    %0.5f  \n',tiempo,Vx,Vy,posicion_X,posicion_Z,posicion_Y);
            
             Y=[Y posicion_Y];
             VYs=[VYs Vy];
             X=[X posicion_X];
             VXs=[VXs Vx];
             Z=[Z posicion_Z];
             VZs=[VZs Vz];
    
             Yp = (1247 - 85) * exp(-((posicion_X .^ 2) ./ (2*1250^2) + (posicion_Z .^ 2) ./ (2*1250^2) ));
             diferencia=posicion_Y-Yp;
    
             if diferencia<=0
                 PosF_z=[PosF_z posicion_Z];
                 PosF_x=[PosF_x posicion_X];
                 break 
             end
     
             if posicion_Y<=0 
                 break 
             end 

             if Vy < Vyi && Vy > -1
                 maxPnt = posicion_Y;
             end
    
        end
    end
    
    %Gráficar 
    figure(1);
    plot3(X,Z,Y)
    hold on

    figure(2);
    scatter(PosF_x,PosF_z,LineWidth=2.5)
    hold on
    
    VtScat_x(end+1) = PosF_x;
    VtScat_y(end+1) = PosF_z;
    
    V = sqrt(Vx^2 + Vz^2 + Vy^2);

    fprintf('\nEl proyectil %0.15g se detuvo en la siguiente coordenada: %0.5f, %0.5f, %0.5f\n',n,posicion_X, posicion_Z, posicion_Y)
    fprintf('\nLa velocidad máxima alcanzada por el proyectil %0.15g fue: %0.5fm/s\n',n,V)
    fprintf('\nLa altura máxima alcanzada por el proyectil %0.15g fue aproximadamente: %0.5fm\n\n',n,maxPnt)

end

% Gráfica de los puntos de impacto
figure(3)
scatter(VtScat_x, VtScat_y, 'r', 'Marker', '*', LineWidth=1.5)
legend('Punto de Impacto','fontsize',12);
xlabel('x','fontsize',16); ylabel('y','fontsize',14);
