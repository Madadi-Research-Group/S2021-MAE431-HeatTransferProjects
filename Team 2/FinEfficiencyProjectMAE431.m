%--------------------------------------------------------------------------
%
%   MAE 431: Midterm Project
%   Group-2: Brandon Collins, Martin Castaneda, Scott Carso, and Atif Farooq
%   Date: 4/28/2021
%
%   Radiator Fin Efficiency for Rectangular and Cylindrical Pins
%
%--------------------------------------------------------------------------
clear;clc;
%Inputs for Testing in SI Units
Qexp = 15302.2;             %In Watts. 
k=237;                      %Thermal Condictivity of Fins W/m*C
ctc=.006;                   %Center to Center Distance in between pins
Tb=100;                     %Radiator Plate Surface Temperature
Tinf=30;                    %Abiant Temperature
h=35;                       %Heat Transfer Coefficient
w = 1;                      %Plate Width in meters
l = 1;                      %Plate Length in meters
Aplate = w*l;               %Area of the Plate
n = floor(Aplate/ctc^2);    %Number of Fins

%For Cylindrical Pins
Lf=.03;     % Fin Length meters
Df=.0025;   % Fin Diameter meters

%For Rectangular Pins
rectL=.03;      %Pin Length meters
rectW = .0025;  %Pin width
rectT = .0025;  %Pin thickness

%Calculating for Cylindrical Pin System

%Calculating Areas
AfinC = n*(pi*Df*Lf +((pi*Df^2)/4));    %Calculating the Area of the Fins for Cylindrical Pins
AunfinC= Aplate-n*(pi*Df^2/4);          %Calculating the area of the Plate Behind the Fins

%Heat Transgfer Calculations
QfinC = h*AfinC*(Tb-Tinf);       %Calculating the Heat Transfer of the Radiator Fin
QplateC = h*AunfinC*(Tb-Tinf);   %Calculating the Heat Transfer From the Rest of the Plate
QmaxC = QfinC+QplateC;           %Total Max Heat Transfer for System

%Calculating Effeciency for Cylindrical System
EffC= Qexp/QmaxC;
EffC= EffC*100;   %Calculating for Percentage
%Output Efficency to User
fprintf('The Effeciency for the Cylindrical Fin is %6.3f Percent. \n',EffC)


%%For Rectangular Fins
%Calculating Areas
AfinR = n*(4*rectW*rectL+rectW*rectT);      %Calculating the Area of the Fins for Rectangular Fins
AunfinR= Aplate-n*(rectL*rectT);            %Calculating the Area of the Plate Behind the Fins

%Heat Transgfer Calculations
QfinR = h*AfinR*(Tb-Tinf);       %Calculating the Heat Transfer of the Radiator Fin
QplateR = h*AunfinR*(Tb-Tinf);   %Calculating the Heat Transfer From the Rest of the Plate
QmaxR = QfinR+QplateR;           %Total Max Heat Transfer for System

%Calculating Effeciency of Rectangular System
EffR= Qexp/QmaxR;
EffR= EffR*100;   %Calculating for Percent
%Output Efficency to User
fprintf('The Effeciency for the Rectangular Fin is %6.3f Percent.',EffR)
