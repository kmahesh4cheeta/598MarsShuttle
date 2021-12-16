function shuttle = weightEstimate_hybVDK_TPS(shuttle, propmassfrac, init_guess)
%weightEstimate_hybVDK_TPS Estimates weight according to VDK equations from
%reference, including a TPS Mass fraction
%   Detailed explanation goes here
%     weight = shuttle.weight;
%     prop = shuttle.prop;
%     weight.propmassfrac = propmassfrac;
    w0 = fsolve(@(x) wdelta(x, propmassfrac, shuttle), init_guess)
    

    
    function wd_n = wdelta(w0, propmassfrac, shuttle)
        wgt = shuttle.weight;
        prop = shuttle.prop;
        w_dry = w0 * (1 - propmassfrac);
%         disp(["Dry Weight", w_dry]);
        delta_w = w_dry;
       
        %Technology Estimates
        I_str = wgt.I_str; % kg/m^2
        tps_mf = wgt.tps_frac;
        w_prop = w0 * propmassfrac;
        
        
        % Everything except Structural Weight
        w_eng = w0 * shuttle.t_w / shuttle.engine_t_w;
        w_sys = wgt.csys + wgt.fsys * w_dry;
        w_crew = wgt.crew;
        w_tps = tps_mf * w0;
    
        % Propellant Volume and Rear Fuse Length Calculation
        wf = w_prop / (1 + prop.r_of);
        wo = w_prop * prop.r_of / (1 + prop.r_of);
        Vf = wf / prop.rho_f;
        Vo = wo / prop.rho_lox;
%         disp([i, "Propellant Volume", (Vf + Vo)])
        w_tank = prop.m_v_tank * (Vf + Vo);
        l_tank = 1.1 * (Vf + Vo) / (pi * prop.r_tank^2);
        rf_length = l_tank + 4;
%         disp([i, "RF Length:", rf_length])
    %         vsp.VSPRenew();
    %         vsp.ReadVSPFile(shuttle.vspfile);
    %         rf = FindGeomNamed('RearFuselage');
    %         wing = FindGeomNamed('Wing');
    %         cr = vsp.GetParmVal(wing, 'Root_Chord', 'XSec_1');
    %         vsp.SetParmValUpdate(rf, 'Length', 'Design', rf_length);
    %         vsp.SetParmValUpdate(wing, 'X_Rel_Location', 'XForm', (rf_length - cr - 1));
    %         vsp.Update();
    %         vsp.WriteVSPFile(shuttle.vspfile);
    
        % Calculate Wetted Area and Structural Weight
    %         res_id = vsp.ExecAnalysis('CompGeom');
    %         wac = vsp.GetDoubleResults(res_id, 'Wet_Area');
    %         s_wet = sum(cell2mat(wac));
        shuttle.swet = shuttle.swet + shuttle.weight.rearper * (rf_length - shuttle.rear_length);
        shuttle.rear_length = rf_length;
        w_str = I_str * shuttle.swet;
        w_dry_new = 1.03 * (w_str + w_tank + w_tps + w_crew + w_sys + w_eng);
%         disp([i, "Dry Weight", w_dry_new])       
        w0_n = w_dry_new / (1 - propmassfrac);
        wd_n = w0_n - w0;
        
    end

    

    
    wt = shuttle.weight;
    prop2 = shuttle.prop;
    wt.dry = w0 * (1 - propmassfrac) / 1.03;
    wt.total = w0;
    disp(["Total Weight:", wt.total])
    shuttle.weight = wt;
    %Technology Estimates
    wt.prop = w0 * propmassfrac;
    
    
    % Everything except Structural Weight
    wt.eng = w0 * shuttle.t_w / shuttle.engine_t_w;
    wt.sys = wt.csys + wt.fsys * wt.dry;
    
    wt.tps = wt.tps_frac * w0;

    % Propellant Volume and Rear Fuse Length Calculation
    w_f = wt.prop / (1 + prop2.r_of);
    w_o = wt.prop * prop2.r_of / (1 + prop2.r_of);
    V_f = w_f / prop2.rho_f;
    V_o = w_o / prop2.rho_lox;
%         disp([i, "Propellant Volume", (V_f + Vo)])
    wt.tank = 0 * prop2.m_v_tank * (V_f + V_o);
    ltank = 1.1 * (V_f + V_o) / (pi * prop2.r_tank^2);
    rf_l = ltank + 8;
%         disp([i, "RF Length:", rf_length])
%         vsp.VSPRenew();
%         vsp.ReadVSPFile(shuttle.vspfile);
%         rf = FindGeomNamed('RearFuselage');
%         wing = FindGeomNamed('Wing');
%         cr = vsp.GetParmVal(wing, 'Root_Chord', 'XSec_1');
%         vsp.SetParmValUpdate(rf, 'Length', 'Design', rf_length);
%         vsp.SetParmValUpdate(wing, 'X_Rel_Location', 'XForm', (rf_length - cr - 1));
%         vsp.Update();
%         vsp.WriteVSPFile(shuttle.vspfile);

    % Calculate Wetted Area and Structural Weight
%         res_id = vsp.ExecAnalysis('CompGeom');
%         wac = vsp.GetDoubleResults(res_id, 'Wet_Area');
%         s_wet = sum(cell2mat(wac));
    shuttle.swet = shuttle.swet + shuttle.weight.rearper * (rf_l - shuttle.rear_length);
    shuttle.rear_length = rf_l;
    wt.str = wt.I_str * shuttle.swet;
    

end