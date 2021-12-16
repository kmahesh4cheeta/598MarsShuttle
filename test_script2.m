vsp.VSPRenew();
filename = 'testshuttle.vsp3';
vsp.ReadVSPFile(filename);
res_id = vsp.ExecAnalysis('CompGeom');
wac = vsp.GetDoubleResults(res_id, 'Wet_Area');
s_wet = sum(cell2mat(wac));


% fuseid = FindGeomNamed('FuselageGeom');
dgFile = strcat(filename(1:length(filename)-5), '_DegenGeom.m');
vsp.SetComputationFileName(vsp.DEGEN_GEOM_M_TYPE, dgFile)
vsp.ComputeDegenGeom(3, vsp.DEGEN_GEOM_M_TYPE)
run(dgFile);

% [cl, cd, xcp, aref] = AeroForceMomentsAoA(alpha, degenGeom, true)

alpharange = linspace(-10,90,21);
[alpharange2, cl, cd, l_d, x_cp, sref] = AeroData(degenGeom,alpharange * pi/180);
figure("Name", "CD")
plot(alpharange, cd)
figure("Name", "CL")
plot(alpharange, cl)
figure("Name", "L/D")
plot(alpharange, l_d)