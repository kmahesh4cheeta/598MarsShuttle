vsp.VSPRenew();
filename = 'testshuttle.vsp3';
vsp.ReadVSPFile(filename);

fuseid = FindGeomNamed('FuselageGeom');
dgFile = strcat(filename(1:length(filename)-5), '_DegenGeom.m');
vsp.SetComputationFileName(vsp.DEGEN_GEOM_M_TYPE, dgFile)
vsp.ComputeDegenGeom(3, vsp.DEGEN_GEOM_M_TYPE)
run(dgFile);
alpha = 30 * pi / 180;
[cl, cd, xcp, aref] = AeroForceMomentsAoA(alpha, degenGeom, true)