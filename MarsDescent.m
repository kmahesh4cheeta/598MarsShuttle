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
B0 = m0/(Cd*A_ref);
global aT;
aT

V0 = X0_desc(1);
gamma0 = X0_desc(2);


%% STAGE 1: Eqilibrium Glide (from top to 10000 m)

X0_eg = [V0;gamma0;m0;z0];

p_eg = [g;rho_ref;H;Rp;L_D;B0];

[t_eg,X_eg] = EquilibriumGlide(X0_eg,p_eg);

V_eg = X_eg(:,1);
gamma_eg = X_eg(:,2);
m_eg = X_eg(:,3);
z_eg = X_eg(:,4);

% figure(1)
% plot(V_eg, z_eg)
% figure(2)
% plot(V_eg, gamma_eg * 180 / pi)

% solve quatdratic for aT/g
a = 1;
b = sin(gamma_eg) .* (V_eg .^ 2) ./ (2 * g * z_eg);
c = -(1 + (V_eg .^ 2) .* (1 + sin(gamma_eg).^2) ./ (4 * g * z_eg) );

D = sqrt(b .^ 2 - 4 * (a .* c));
at_g = (D - b) ./ (2 * a);


Vf_eg = V_eg(end);
gammaf_eg = gamma_eg(end);
mf_eg = m_eg(end);
zf_eg = z_eg(end);

Xf_eg = [Vf_eg;gammaf_eg;mf_eg;zf_eg];

%% STAGE 2: Powered Descent (from 10000 m to 10 m)

p_pd = [T0;Isp;g;g0;rho_ref;H;Cd;A_ref];

X0_pd = Xf_eg;

[t_pd,X_pd] = PoweredDescent(X0_pd,p_pd);


% Return total arrays
t_desc = [t_eg;t_pd];
X_desc = [X_eg;X_pd];


%% Plot

% aT/g vs. alt
aTg_alt = figure(1);
plot( at_g,z_eg,'LineWidth',1.5);
xlabel('a_T / g','FontSize',12);
ylabel('Altitude (m)','FontSize',12);

% save plot
print(aTg_alt,'aTg_alt.png','-dpng','-r100');


end

