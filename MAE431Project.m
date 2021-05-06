clear; clc;
%% Ask For User Input
ri=(input('Enter Inner Pipe Diameter in cm: ')/2)/100; %inner radius in cm
ro=(input('Enter Outer Flange Diameter in cm: ')/2)/100; %total flange radius in cm
Ti=input('Enter Average Steam Temperature in Celsius: ');%Steam Temperature
Tinf=input('Enter Ambient Air Temperature in Celsius: ');%Surrounding Air Convection 
dx1=(input('Enter Pipe Thickness in cm: '))/100;%thickness of pipe
t=input('Enter the Thickness of the Flange in cm: ')/100; %Flange Thickness
M=input('Enter Number of Nodes to Use: ');%number of nodes
if M<=2
    warning('Too Few Nodes. 3 Nodes Will Be Used.');
    M=3;
end
%% Generate distances between nodes
L=ro-(ri+dx1); %Calculate radial excess used to determine dx2
dx2=L/(M-2);
r=zeros(1,M); %Preallocate array for radii
r(1)=ri; 
r(2)=r(1)+dx1;
for i=1:(M-2)
    r(i+2)=r(i+1)+dx2;
end
%% Generate Node Equations
hi=180; %Heat transfer coefficient
k=52; %Thermal Conductivity
syms T [1,M] %Preallocate Temp Variables
syms N [1,M] %Preallocate Node Equations
for i=1:(M)
    if i==1 %Node 0
     N(i)=hi*(2*pi*r(i))*(Ti-T(i))+(0.5*k*2*pi*t*(r(i)+r(i+1)))*((T(i+1)-T(i))/dx1)==0;   
    elseif i==2 %Node 1
     N(i)=((0.5*k*2*pi*t*(r(i-1)+r(i)))*((T(i-1)-T(i))/dx1))+((0.5*k*2*pi*t*(r(i)+r(i+1)))*((T(i+1)-T(i))/dx2))+((pi*t*(r(i)+((r(i)+r(i+1))/2))*dx2)*((hi*(Tinf-T(i)))))==0;    
    elseif i==M %Outermost Node
     N(i)=((0.5*k*2*pi*t*(r(i-1)+r(i)))*((T(i-1)-T(i))/dx2))+((pi*t*dx2*((0.5*(r(i-1)+r(i)))+r(i)))+4*pi*r(i)*t)*((hi*(Tinf-T(i))))==0;  
    else %All other Nodes
     N(i)=((0.5*k*2*pi*t*(r(i-1)+r(i)))*((T(i-1)-T(i))/dx2))+((0.5*k*2*pi*t*(r(i)+r(i+1)))*((T(i+1)-T(i))/dx2))+((4*pi*t*r(i)*dx2)*((hi*(Tinf-T(i)))))==0;   
    end
end
%% Solve for Temperatures
TempSolve=solve(N,T);
% Present Temperature values to user
 Temps= double(struct2array(TempSolve));
 Tc= [0:(M-1)];
 TableA=table(Tc.',Temps.','VariableNames',{'Node','Temperature (Degrees Celsius)'});
 disp(TableA);
%% Generate Qdot Equations
Q_dot=zeros(1,M);
for i=1:(M)
    if i==1
    Q_dot(i)=0;    
    elseif i==2
    Q_dot(i)=(hi*4*pi*t*((r(i)+0.055)/2)*(dx2/2)*(Temps(i)-Tinf)); 
    elseif i==M
    Q_dot(i)= ((hi*4*pi*t*((0.095+r(i))/2)*(dx2/2))+((2*pi*t*r(i))*(Temps(i)-Tinf)))+(((2*pi*t*((0.095+r(i))/2)*(dx2/2)))); 
    else
    Q_dot(i)=(hi*4*pi*t*r(i)*dx2*(Temps(i)-Tinf));   
    end
end
Q_dot_Total=sum(Q_dot);
%Present total Heat Transfer to User
fprintf('The total amount of heat transfer on the surface of the flange is %f Watts. \n',Q_dot_Total)