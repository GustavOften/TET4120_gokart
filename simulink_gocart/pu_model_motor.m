Ua_base = 19.275;
Ia_base = 270;
Za_base = Ua_base/Ia_base;
tau_base = 19.2;
N_base = 2520;
J_m = 0.0234;
J_gear = 0.1;
J_wheel=0.04;
J_wheelm=J_wheel*(8.488263631567752e+02/2520)^2;
eta = 0.904;
omega_base = N_base*pi/30;
%Uf_base = 75;
%If_base = 7.5;
%Zf_base = 10;
ny = 0.904;
ra = 0.1968;
la = 6.749e-5;
%rf = 0.79;
Ta = la/ra;
Tm = (J_m+J_gear/2+J_wheelm/2)*omega_base^2/Ua_base/Ia_base;
Ubatt=24;

%Mechanic constants
r_wheel = 0.25/2;
N_base_wheel=(40/3.6)/(2*pi*r_wheel)*60;
gear_ratio=N_base/N_base_wheel;
tau_base_wheel=92.01;



%%%%%%Current controller armature parameters
fsw=10000;
Tsw=1/fsw;
udc=Ubatt/Ua_base;
Taf=0.2*Tsw;
Tdelay=Tsw/3;
Tsum=Taf+Tdelay;
Kpa=ra*Ta/(udc*2*Tsum);

%%%%%Current controller field parameteres
fswf=1000;
Tswf=1/fswf;
Tff=0.2*Tswf;
Tdelayf=Tswf/3;
Tsumf=Tdelayf+Tff;
Kpf=0.2/(udc*2*Tsumf);

%%%%Speed controller parameters
Beta=4;
Tin=Beta*2*Tsum;
Teqi=2*Tsum;
Tdelayn=1;
TsumN=Teqi;
Kpn=Tm/(sqrt(Beta)*TsumN);