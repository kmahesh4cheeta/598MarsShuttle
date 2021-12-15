% Complete Mars Shuttle Mission for various transfer orbit periapses

clear;
clc;
format long g

% Initial planet conditions
Rp = 3396000;    % m
g = 3.71;    % m/s
rho_ref = 0.02; % kg/m^3
H = 11100;  % m
g0 = 9.81;  % m/s^2     % g at Earth for thruster
mu = 4.2828E4;  % km/s^3
alt_gw = 316;    % km     % altitude of Mars gateway

% Initial vehicle conditiond/parameters
m_pl = 3000;  % kg   % mass of payload and structure
m_prop = 12000; % kg    % mass of propellant only - after Hohmann1
m0 = 38000; %m_pl + m_prop;      % kg
Cd = 1.1;
A_ref = 152;   % m^2
L_D = 0.5;
z0 = 130000;    % m
Isp = 360;      % s

% psi0 = pi/2 + gamma0;
global aT;
aT = 2.8 * g;
T_desc = aT * m0; %15000;      % N
T_asc_Tdesc = 1;

p_H = [Rp/1000;mu;alt_gw]; % Initial parameters for Hohmann transfers
p_desc = [Rp;g;rho_ref;H;g0;m0;Cd;A_ref;L_D;z0;Isp;T_desc]; % Initial parameters for descent
p_asc = [T_asc_Tdesc;Isp;g;g0;rho_ref;H;Cd;A_ref];  % Initial parameters for ascent
% p_H2 = [Rp/1000;mu;alt_gw];   % Initial parameters for Hohmann transfer 2

% peri = (Rp/1000) + linspace(-220,120,5);  % km
peri = [3396 + 129];
propmassfrac = [];
for i = 1:length(peri)

% Hohmann transfer to entry
[entry] = Hohmann1(peri(i),p_H);

ent_dV1 = entry(3);
% ent_dV2 = ent_state(4);
% ent_state(2) = sqrt(mu/((Rp+z0)/1000)); % km/s   % circular velocity at atmos orbit
X0_desc = [(entry(1) - entry(4)) * 1000;entry(2)];
Vc_130 = entry(5);

% Atmosphere Descent
[t_desc,X_desc] = MarsDescent(X0_desc,p_desc);

Xf_desc = X_desc(end,1:4);

Xi_asc = Xf_desc;
Xi_asc(1) = 0.1;
Xi_asc(2) = 90 * pi / 180;

% Atmosphere Ascent
[t_asc,X_asc] = MarsAscent(Xi_asc,p_asc);
figure(4)
plot(t_asc, X_asc(:,1))
figure(5)
plot(t_asc, X_asc(:,2))
figure(6)
plot(t_asc, X_asc(:,4))
Xf_asc = X_asc(end,1:4);
% [V_ex,gamma_ex] = Xf_asc(1:2);


% Hohmann transfer to orbit
[exit] = Hohmann2(Xf_asc,p_H);
ex_dV0 = exit(1);   % dV to switch to circular orbit at top of atmosphere
ex_dV1 = exit(2);   % dV from circular top of atmosphere to transfer orbit
ex_dV2 = exit(3);   % dV from transfer orbit to gateway orbit

save(sprintf('Periapsis_%4d.mat',round(peri(i))));

mf = Xf_asc(3) * exp(-1000 * (ex_dV0+ ex_dV1+ ex_dV2)/(g0 * Isp));

m_prop_frac = 1-(mf/m0);
propmassfrac = [propmassfrac m_prop_frac];

end


%% PLOTS
