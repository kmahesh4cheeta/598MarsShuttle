vsp.VSPRenew();
filename = 'testshuttle.vsp3';
vsp.ReadVSPFile(filename);

% fuseid = FindGeomNamed('FuselageGeom');

% geomcell = vsp.FindGeomsWithName( 'Cone');
% geomid = geomcell{1};

% deltac = 60 * pi / 180;
% height = vsp.GetParmVal(geomid, 'Height', 'Design');
% vsp.SetParmValUpdate(geomid, 'Diameter', 'Design', 2 * height * tan(deltac));

% vsp.Update();
% vsp.WriteVSPFile( filename );

dgFile = strcat(filename(1:length(filename)-5), '_DegenGeom.m');
vsp.SetComputationFileName(vsp.DEGEN_GEOM_M_TYPE, dgFile)
vsp.ComputeDegenGeom(3, vsp.DEGEN_GEOM_M_TYPE)
run(dgFile);

alpha = 30 * pi / 180;
tr_mat = [cos(alpha) 0 sin(alpha); 0 1 0; -sin(alpha) 0 cos(alpha)];
ngeom = length(degenGeom);
hold on
aref = 0;
cdaref = 0;
claref = 0;
cmaref = [0,0,0];
cfaref = [0,0,0];

for i = 1:ngeom


    C = dgAeroForceMoment(alpha, degenGeom, i);
%     [K,H,Pmax,Pmin] = surfature(degenGeom(i).surf.x, degenGeom(i).surf.y, degenGeom(i).surf.z);
    
    surf(degenGeom(i).surf.x, degenGeom(i).surf.y, degenGeom(i).surf.z, C.cp);
    aref = aref + C.aref;
    cdaref = cdaref + C.cd_aref;
    claref = claref + C.cl_aref;
    cmaref = cmaref + C.m;
    cfaref = cfaref + C.f;
    
end
colorbar
axis equal
aref
cd = cdaref/aref
cl = claref/aref
cm = cmaref(2)/aref
cf = cfaref/aref
xcp = -cm/(cf(3))
xcp_clonly = -cm/cl

function aerod = dgAeroForceMoment(alpha, degenGeom, i)
    x = degenGeom(i).surf.x;
    y = degenGeom(i).surf.y;
    z = degenGeom(i).surf.z;
    tr_mat = [cos(alpha) 0 sin(alpha); 0 1 0; -sin(alpha) 0 cos(alpha)];
    cx = (x(1:end-1,1:end-1)+x(2:end,2:end))/2;
    cy = (y(1:end-1,1:end-1)+y(2:end,2:end))/2;
    cz = (z(1:end-1,1:end-1)+z(2:end,2:end))/2;
    cvec = [];
    cvec(:,:,1) = cx;
    cvec(:,:,2) = cy;
    cvec(:,:,3) = cz;
    nx = degenGeom(i).surf.nx;
    ny = degenGeom(i).surf.ny;
    nz = degenGeom(i).surf.nz;
    nvec = [];
    nvec(:,:,1) = -nx;
    nvec(:,:,2) = -ny;
    nvec(:,:,3) = -nz;
    areas = degenGeom(i).surf.area;
    cos_th = (nx .* cos(alpha)) + (ny .* 0) + (nz .* sin(alpha));
    aerod.cp = 2 * (abs(min(cos_th, 0)) .^2) ;
    aerod.aref = sum(sum(abs(min(nz, 0)) .* areas));
    aerod.cvec = cvec;
    aerod.nvec = nvec;
    Fvec = (nvec .* aerod.cp) .* areas;
    Fsum = sum(sum(Fvec, 1), 2);
    aerod.f = Fsum(:,:);
    f_vframe = tr_mat * Fsum(:,:)';
    aerod.cd_aref = f_vframe(1);
    aerod.cl_aref = f_vframe(3);
    Mvec = (cross(cvec, nvec, 3) .* aerod.cp) .* areas;
    Msum = sum(sum(Mvec, 1), 2);
    aerod.mvec = Mvec;
    aerod.m = Msum(:,:);
end

function geomid = FindGeomNamed(name)
    geomcell = vsp.FindGeomsWithName(name);
    geomid = geomcell{1};
end