% STAGE 3: Vertical Land on Mars

function [t_vl,X_vl] = VerticalLand(X0,p) 

    % Integrate EOMs
    tspan = [0 100];
    opts = odeset('RelTol',1E-13,'AbsTol',1E-13,'Events',@AltLimit);
    func = @(t,X) EOMsVL(t,X,p);
    [t,X] = ode45(func,tspan,X0,opts);
    
    t_vl = t;
    X_vl = X;
    
end

% EOMs for vertcal landing
function X_dot = EOMsVL(~,X0,p)
    
    % Parse parameters
    T = p(1);
    Isp = p(2);
    g = p(3);
    g0 = p(4);
    
    % Parameters for drag
%     z_ref = p(5);
%     rho_ref = p(6);
%     H = p(7);
%     Cd = p(8);
%     A = p(9);
    
    % Parse state vector
    V = X0(1);
    gamma = X0(2);
    m = X0(3);
    z = X0(4);


    % Get beta & rho for drag
%     B = m/(Cd*A);
%     rho = rho_ref*exp((z_ref-z)/H);
    
    % Diff eqns
%     V_dot = -((rho*V^2)/(2*B))+g - T/m;  % with drag
    V_dot = g - T/m;
    gamma_dot = 0;
    m_dot = -T/(g0*Isp);
    z_dot = V;
    
    X_dot = [V_dot;gamma_dot;m_dot;z_dot];

end
    
    % Events function to terminate integration at z = 0
    function [value,isterminal,direction] = AltLimit(t,X)
        value = (X(4) < 0);
        isterminal = 1;
        direction = +1;
    end