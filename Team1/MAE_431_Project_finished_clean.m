%% MAE_431_Project
clear; clc;

% User Defines the convection heat transfer value, h to find the
% temperature at each node.
h = input('Define the convection heat transfer value h: ');


% Dimensions of CPU are 37.5 mm x 11.25 mm

% Defining nodal spacing
x = 37.5; %mm
x_nodes = 10; %Number of nodes in x direction
dx = x/x_nodes; % mm
y = 11.25; % mm
y_nodes = 3; % Number of nodes in the y direction
dy = y/y_nodes; % mm

% Type of cpu material: Silicon
k = 148; % W/(m*K) (thermal conductivity)

% Set up the variables: T1 thru T33
syms T [33,1];
temps = T;

% Ambient Temperature assumed to be 27 C or 300 K
Tinf = 300; % Kelvin

% Assuming that Ts=350 K, the temperature at nodes 34 through 44 is assumed
% to be the same as Ts.


% Set up of equations for each node. (Nodes 1 through 33).

% For equations 1 and 12
for v = 1:11:12
    eq(v) = (h*(dy/2)*(Tinf-temps(v)))+((h*(dx/2)*(Tinf-temps(v))))+(k*(dy/2)*((temps(v+1)-temps(v))/dx))+(k*(dx/2)*((temps(v+11)-temps(v))/dy))==0;
   % display(eq(v));
end

% For equations 2 through 10
for i = 2:10
    eq(i) = ((k/2)*(temps(i-1)-temps(i))) + (h*dx*(Tinf-temps(i))) + ((k/2)*(temps(i+1)-temps(i))) + (k*(temps(i+11)-temps(i))) == 0;
   % display(eq(i));
end

% For equation 11
p = 11;
eq(p) = (k*(dy/2)*((temps(p-1)-temps(p))/dx))+(h*(dx/2)*(Tinf-temps(p)))+(h*(dy/2)*(Tinf-temps(p)))+(k*(dx/2)*((temps(p+11)-temps(p))/dy))==0;

% For equations 13 through 21
for n = 13:21
   eq(n) = (temps(n-1) + temps(n-11) + temps(n+1) + temps(21+(n-10)) - 4*temps(n)) == 0;
end

% For equation 22
r = 22;
eq(r) = (k*dy*(temps(r-1)-temps(r))/dx)+((k*(dx/2)*(temps(r-11)-temps(r))/dy))+(h*(dy)*(Tinf-temps(r)))+(k*(dx/2)*((temps(r+11)-temps(r))/dy))==0;

% For equation 23
v = 23;
eq(v) = (h*(dy/2)*(Tinf-temps(v)))+((h*(dx/2)*(Tinf-temps(v))))+(k*(dy/2)*((temps(v+1)-temps(v))/dx))+(k*(dx/2)*((350)-temps(v))/dy)==0;

% For equations 24 through 32
for b = 24:32
    eq(b) = ((temps(b-1)-temps(b)) + (temps(b-11)-temps(b)) + (temps(b+1)-temps(b)) +(350-temps(b))) == 0; %was temps(b+11) added 350 next to last part of eq
end

% For equation 33
r = 33;
eq(r) = (k*dy*(temps(r-1)-temps(r))/dx)+((k*(dx/2)*(temps(r-11)-temps(r))/dy))+(h*(dy)*(Tinf-temps(r)))+(k*(dx/2)*((350-temps(r))/dy))==0;

% Solve for temperatures at each node
s = solve([eq],[temps]);
answer = struct2array(s);

% Display Solution
disp('Solutions:');
for m = 1:33
   fprintf('T%0.0d = %3.2d\n',m,answer(m)); 
end

for xx = 34:44
    fprintf('T%0.0d = %3.2d\n',xx,350);
end




