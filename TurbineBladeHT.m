function [Q_dot, T_s1, T_s2, T_c] = TurbineBladeHT(T_amb1,T_amb2,k,h,L,Ac)
%This function takes the ambient temperature before and after the turbine
%blade, the convection heat transfer coefficient, the conduction heat
%transfer coefficient, the length of the turbine blade, and the
%cross-sectionl area of the blade to find the surface temperatures of the
%blade and the temperature at the center of the blade
%T_amb1: ambient temperature before the blade
%T_amb2: ambient temperature after the blade
%k: conduction coefficient
%h: convenction coefficient
%L: length of the turbine blade
%Ac: Cross-sectional area of the blade
%The current version of the function assumes that heat generation (e_gen)
%is zero and that only 3 nodes are used to find the temperature in the
%blade and that the system is adiabatic and its a single-stage turbine and
%using SI units

%Setting up thermal resistance network
R1 = 1/(h*Ac); %convection thermal resistance
R2 = L/(k*Ac); %conduction thermal resistance
R3 = R1;
R_tot = R1+R2+R3;

%Finding Q assuming the system is adiabatic
Q_dot = (T_amb1 - T_amb2)/R_tot;

%Finding the surface temperatures of the blade
T_s1 = T_amb1-(Q_dot*R1);
T_s2 = (Q_dot*R3)+T_amb2;

%Using numerical methods to find the
%temperature at the center of the blade
T_c = ((T_s1+T_s2)/2);
%Temperature at the center is the average
%since heat generation is considered as zero

%setting up the plot for the temperatures
%in the blade
delta_x = L/2; %assuming there are 3 nodes
x = [0:delta_x:L];
T = [T_s1 T_c T_s2];
plot(x,T);
xlabel('Length of the blade (m)');
ylabel('Temperature of the blade (Celcius)');

end