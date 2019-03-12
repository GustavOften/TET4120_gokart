%Gocart parameters
A = 2;
m = 100;
r_wheel = 0.5*25;
g = 9.81;
phi = 0.4;
%n = 0.3;

%Load parameters
rho = 1.2;
c_d = 0.2;
mu_r = 0.01;

%Load
N = m*g*cos(phi);
K_drag = 0.5*rho*A*c_d;
K_rolling = N*mu_r/r_wheel;

T_m = 1;
T_l = 1;
T_f = 1;
