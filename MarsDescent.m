% All Mars descent stages from LMO to ground

function [t_desc,X_desc] = MarsDescent(X0_desc,p)

% p_desc = [Rp;g;rho_ref;H;g0;m0;Cd;A_ref;L_D;z0;Isp;T0];

% Initial planet conditions
Rp = p(1);     % m
g = p(2);    % m/s
rho_ref = p(3); % kg/m^3
H = p(4);  % m
g0 = p(5);  % m/s^2     % g at Earth for thruster

% Initial vehicle conditiond/parameters
m0 = p(6);      % kg
Cd = p(7);
A_ref = p(8);   % m^2
L_D = p(9);
z0 = p(10);    % m
Isp = p(11);      % s
T0 = p(12);      % N
T_vl = p(13);
B0 = m0/(Cd*A_ref);

% % Initial planet conditions
% Rp = 3396000;     % m
% g = 3.71;    % m/s
% Vc = sqrt(g*Rp);    % m/s
% z_ref = 0;  % m
% rho_ref = 0.02; % kg/m^3
% H = 11100;  % m
% g0 = 9.81;  % m/s^2     % g at Earth for thruster
% 
% % Initial vehicle conditiond/parameters
% m0 = 15000;      % kg
% Cd = 0.5;
% A_ref = 15.9;   % m^2
% L_D = 1.07;
% z0 = 130000;    % m
% Isp = 300;      % s
% B0 = m0/(Cd*A_ref);
% T0 = 519100; %15000;      % N
% % psi0 = pi/2 + gamma0;
% % aT = T0/m0;

V0 = X0_desc(1);
gamma0 = X0_desc(2);


%% STAGE 1: Eqilibrium Glide (from top to 10000 m)

X0_eg = [V0;gamma0;m0;z0];

p_eg = [g;rho_ref;H;Rp;L_D;B0];    %B0;z0;psi0;aT];

[t_eg,X_eg] = EquilibriumGlide(X0_eg,p_eg);

V_eg = X_eg(:,1);
gamma_eg = X_eg(:,2);
m_eg = X_eg(:,3);
z_eg = X_eg(:,4);

Vf_eg = V_eg(end);
gammaf_eg = gamma_eg(end);
mf_eg = m_eg(end);
zf_eg = z_eg(end);

Xf_eg = [Vf_eg;gammaf_eg;mf_eg;zf_eg];

%% STAGE 2: Powered Descent (from 10000 m to 10 m)

p_pd = [T0;Isp;g;g0;rho_ref;H;Cd;A_ref];

X0_pd = Xf_eg;

[t_pd,X_pd] = PoweredDescent(X0_pd,p_pd);

% PD trajectory
V_pd = X_pd(:,1);
gamma_pd = X_pd(:,2);
m_pd = X_pd(:,3);
z_pd = X_pd(:,4);

% PD final values
Vf_pd = V_pd(end);
gammaf_pd = gamma_pd(end);
mf_pd = m_pd(end);
zf_pd = z_pd(end);

Xf_pd = [Vf_pd;gammaf_pd;mf_pd;zf_pd];


%% STAGE 3: Vertical Landing (from 10 m to 0 m)

% T_vl = 15000;      % N

p_vl = [T_vl;Isp;g;g0];

X0_vl = Xf_pd;

[t_vl,X_vl] = VerticalLand(X0_vl,p_vl);

% % VL trajectory
% V_vl = X_vl(:,1);
% gamma_vl = X_vl(:,2);
% m_vl = X_vl(:,3);
% z_vl = X_vl(:,4);

% % VL final values
% Vf_vl = V_vl(end);
% gammaf_vl = gamma_vl(end);
% zf_vl = z_vl(end);
% mf_vl = m_vl(end);

t_desc = [t_eg;t_pd;t_vl];
X_desc = [X_eg;X_pd;X_vl];

end

