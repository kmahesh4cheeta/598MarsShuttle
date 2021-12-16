function shuttle = AeroSetup(shuttle)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    vsp.VSPRenew();
    vsp.ReadVSPFile(shuttle.vspfile);
    res_id = vsp.ExecAnalysis('CompGeom');
    wac = vsp.GetDoubleResults(res_id, 'Wet_Area');
    s_wet = sum(cell2mat(wac));
    shuttle.swet = s_wet;
    fuse = FindGeomNamed('RearFuselage');
    shuttle.rear_length = vsp.GetParmVal(fuse, 'Length', 'Design');
    filename = shuttle.vspfile;
    
    % fuseid = FindGeomNamed('FuselageGeom');
    dgFile = strcat(filename(1:length(filename)-5), '_DegenGeom.m');
    vsp.SetComputationFileName(vsp.DEGEN_GEOM_M_TYPE, dgFile)
    vsp.ComputeDegenGeom(3, vsp.DEGEN_GEOM_M_TYPE)
    run(dgFile);
    
    % [cl, cd, xcp, aref] = AeroForceMomentsAoA(alpha, degenGeom, true)
    
    alpharange = linspace(-10,90,21);
    [alpharange2, cl, cd, l_d, x_cp, sref] = AeroData(degenGeom,alpharange * pi/180);
    shuttle.alpharange = alpharange2;
    shuttle.cl = spline(alpharange2, cl);
    shuttle.cd = spline(alpharange2, cd);
    shuttle.l_d = spline(alpharange2, l_d);
    shuttle.x_cp = spline(alpharange2, x_cp);
    shuttle.sref = sref;
end