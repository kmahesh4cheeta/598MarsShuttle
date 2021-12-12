function shuttle = weightEstimate_hybVDK_TPS(shuttle, propmassfrac, init_guess)
%weightEstimate_hybVDK_TPS Estimates weight according to VDK equations from
%reference, including a TPS Mass fraction
%   Detailed explanation goes here
%     weight = shuttle.weight;
%     prop = shuttle.prop;
%     weight.propmassfrac = propmassfrac;
    w0 = fsolve(@(x) wdelta(x, propmassfrac, shuttle), init_guess)
    

    
    function wd_n = wdelta(w0, propmassfrac, shuttle)
        wt = shuttle.weight;
        prop = shuttle.prop;
        w_dry = w0 * (1 - propmassfrac);
%         disp(["Dry Weight", w_dry]);
        delta_w = w_dry;
       
        %Technology Estimates
        I_str = wt.I_str; % kg/m^2
        tps_mf = wt.tps_frac;
        w_prop = w0 * propmassfrac;
        
        
        % Everything except Structural Weight
        w_eng = w0 * shuttle.t_w / shuttle.engine_t_w;
        w_sys = wt.csys + wt.fsys * w_dry;
        w_crew = wt.crew;
        w_tps = tps_mf * w0;
    
        % Propellant Volume and Rear Fuse Length Calculation
        wf = w_prop / (1 + prop.r_of);
        wo = w_prop * prop.r_of / (1 + prop.r_of);
        Vf = wf / prop.rho_f;
        Vo = wo / prop.rho_lox;
%         disp([i, "Propellant Volume", (Vf + Vo)])
        w_tank = prop.m_v_tank * (Vf + Vo);
        l_tank = 1.1 * (Vf + Vo) / (pi * prop.r_tank^2);
        rf_length = l_tank + 6.4;
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
        shuttle.swet = shuttle.swet + 14.9 * (rf_length - 14.4);
        w_str = I_str * shuttle.swet;
        w_dry_new =  (w_str + w_tank + w_tps + w_crew + w_sys + w_eng);
%         disp([i, "Dry Weight", w_dry_new])       
        w0_n = w_dry_new / (1 - propmassfrac);
        wd_n = w0_n - w0;
    end

    

    
    weight = shuttle.weight;
    weight.dry = w0 * (1 - propmassfrac);
    weight.total = w0;
    disp(["Total Weight:", weight.total])
    shuttle.weight = weight;

end