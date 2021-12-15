% Ascent at Mars

function [t_asc,X_asc] = MarsAscent(X0,p) 

% Integrate EOMs for first stage (gamma=0)
tspan = [0 1700];
opts = odeset('RelTol',1E-13,'AbsTol',1E-13,'Events',@VelLimit);
func = @(t,X) EOMsAscent(t,X,p);
[t,X] = ode45(func,tspan,X0,opts);

t_asc1 = t;
X_asc1 = X;


% Integrate EOMs for second stage (+gamma)
X1 = X(end, :)
X1(2) = 72 * pi / 180;

opts = odeset('Events',@AltLimit);
func = @(t,X) EOMsAscent(t,X,p);
[t_asc2,X_asc2] = ode45(func,tspan,X1,opts);


% Return total arrays
t_asc = [t_asc1;t_asc2];
X_asc = [X_asc1;X_asc2];

end

% EOMs for ascent 
function X_dot = EOMsAscent(~,X0,p)
    
    % Parse parameters
    T = p(1);
    Isp = p(2);
    g_m = p(3);
    Rp = 3396000;
    
    g0 = p(4);
    rho_ref = p(5);
    H = p(6);
    Cd = p(7);
    A = p(8);
    global aT;
    
    % Parse state vector
    V = X0(1);
    gamma = X0(2);
    m = X0(3);
    z = X0(4);
    g = g_m * Rp^2 / (Rp + z)^2;

    if V > 3400 || z > 1.3e5
        T = 0;
    end
    % Get beta & rho
    B = m/(Cd*A);
    rho = rho_ref*exp((-z)/H);
    
    % Diff eqns
    V_dot = - g*sin(gamma) + T * aT;
    gamma_dot = -(g/V)*cos(gamma) + (V/(Rp + z)) *cos(gamma);
    m_dot = -m * T * aT/(g0*Isp);
    z_dot = V*sin(gamma);
    
    X_dot = [V_dot; gamma_dot; m_dot; z_dot];

end

function [value,isterminal,direction] = VelLimit(t,X)
    value = X(1) - 45;
    isterminal = 1;
    direction = 1;
end

% Events function to terminate integration at z = 0
function [value,isterminal,direction] = AltLimit(t,X)
    value = X(2);
    isterminal = 1;
    direction = -1;
end
