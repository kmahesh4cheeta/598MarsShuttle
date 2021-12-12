function shuttle = shuttleSetup_V01()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    shuttle = struct;
    shuttle.vspfile = 'testshuttle.vsp3';
%     vsp.ReadVSPFile(shuttle.vspfile); % Doesn't seem to be needed at the
% %     moment
    shuttle = AeroSetup(shuttle);
    mars_g = 3.71;
    shuttle.at = 3.2 * mars_g;
    shuttle.n_eng = 3;
    shuttle.t_w = shuttle.at * shuttle.n_eng;
    shuttle.engine_t_w = 200;
    % Initialize parameters for Weight Estimations, some guesses

    shuttle.weight = struct;
    shuttle.weight.propmassfrac = 0.73; %Starting Guess
    shuttle.weight.drymargin = 0.05; % 10 percent dry weight margin;
    shuttle.weight.tps_frac = 0.03;
    shuttle.weight.I_str = 14; % Structural weight/unit wetted area, kg/m2
    shuttle.weight.csys = 2100;
    shuttle.weight.crew = 300;
    shuttle.weight.fsys = 0.1;

    shuttle.prop = struct;
    shuttle.prop.r_of = 2.56;
    shuttle.prop.rho_f = 1000;
    shuttle.prop.rho_lox = 1140;
    shuttle.prop.r_tank = sqrt(3);
    shuttle.prop.m_v_tank = 12.0;

end