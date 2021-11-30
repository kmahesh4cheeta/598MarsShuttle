% STAGE 1: EG at Mars

function [t_eg,X_eg] = EquilibriumGlide(X0,p)

% Integrate EOMs
tspan = [0 1300];
opts = odeset('RelTol',1E-13,'AbsTol',1E-13,'Events',@AltLimit);
func = @(t,X) EOMsEG(t,X,p);
[t,X] = ode45(func,tspan,X0,opts);


t_eg = t;
X_eg = X;

end

% EOMs for unpowered descent
function X_dot = EOMsEG(~,X0,p)

% Parse parameters
g = p(1);
rho_ref = p(2);
H = p(3);
Rp = p(4);
L_D = p(5);
B = p(6);

% Parse X0
V = X0(1);
gamma = X0(2);
m = X0(3);
z = X0(4);

% Calculate rho
rho = rho_ref*exp((-z)/H);

% EOMs:
V_dot = -(rho*V^2)/(2*B) - g*sin(gamma);
gamma_dot = ((rho*V)/(2*B))*L_D - (g/V)*cos(gamma) + (V*cos(gamma))/(Rp+z);
m_dot = 0;
z_dot = V*sin(gamma);

X_dot = [V_dot;gamma_dot;m_dot;z_dot];  

end

% Events function to terminate integration at z = 0
function [value,isterminal,direction] = AltLimit(t,X)
    global aT g;
    psi = X(2)+pi/2;
    zi = ((-(X(1)^2)/g)/(8*(((aT/g)^2)-1)))*(3+4*(aT/g)*cos(psi)+cos(2*psi));
    value = (X(4) < zi);
    isterminal = 1;
    direction = +1;
end