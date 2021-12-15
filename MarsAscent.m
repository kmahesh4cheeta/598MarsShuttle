% Ascent at Mars

function [t_asc,X_asc] = MarsAscent(X0,p) 

% Change ascent gamma to +70 deg
X0(2) = deg2rad(70);

% Integrate EOMs
tspan = [0 500];
% opts = odeset('RelTol',1E-13,'AbsTol',1E-13,'Events',@AltLimit);
opts = odeset('Events',@AltLimit);
func = @(t,X) EOMsAscent(t,X,p);
[t,X] = ode45(func,tspan,X0,opts);

t_asc = t;
X_asc = X;

% % Ascent trajectory
% V_A = X_asc(:,1);
% m_A = X_asc(:,3);
% z_A = X_asc(:,4);
% 
% % Ascent final values
% Vf_asc = V_A(end);
% zf_asc = z_A(end);
% mf_asc = m_A(end);

end

% EOMs for ascent 
function X_dot = EOMsAscent(~,X0,p)
    global aT;
    
    % Parse parameters
%     T = p(1);
    Isp = p(2);
    g = p(3);
    g0 = p(4);
    rho_ref = p(5);
    H = p(6);
    Cd = p(7);
    A = p(8);
    
    % Parse state vector
    V = X0(1);
    gamma = X0(2);
    m = X0(3);
    z = X0(4);


    % Get beta & rho
    B = m/(Cd*A);
    rho = rho_ref*exp((-z)/H);
    T = m*aT;
    
    % Diff eqns
    V_dot = -((rho*V^2)/(2*B))-g*sin(gamma) + T/m;
    gamma_dot = -(g/V)*cos(gamma);
    m_dot = -T/(g0*Isp);
    z_dot = V*sin(gamma);
    
    X_dot = [V_dot; gamma_dot; m_dot; z_dot];

end

% Events function to terminate integration at z = 0
function [value,isterminal,direction] = AltLimit(t,X)
    value = (X(4) > 130000);
    isterminal = 1;
    direction = +1;
end
