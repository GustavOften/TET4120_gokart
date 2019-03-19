Ua_base = 93.92;
Ia_base = 160;
Za_base = Ua_base/Ia_base;
tau_base = 68.8;
N_base = 1900;
J_m = 0.06;
J_gear = 0.1;
omega_base = N_base*pi/30;
Uf_base = 75;
If_base = 7.5;
Zf_base = 10;
ny = 0.904;
ra = 0.0646;
la = 3.56e-3;
rf = 0.79;
Ta = la/ra;
Tm = (J_m+J_gear)*omega_base^2/Ua_base/Ia_base;


%%%%%%Current controller armature parameters
fsw=1000;
Tsw=1/fsw;
udc=1.065;
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
Beta=1;
Tn=1;
Tdelayn=1;
TsumN=Tdelayn+Tn;
Kpn=Tm/(sqrt(Beta)*TsumN);