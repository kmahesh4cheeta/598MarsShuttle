vsp.VSPRenew();
filename = 'testshuttle.vsp3';
vsp.ReadVSPFile(filename);

fuseid = FindGeomNamed('FuselageGeom');


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
ngeom = length(degenGeom);
hold on
aref = 0;
cdaref = 0;
claref = 0;
cmaref = [0,0,0];
for i = 1:ngeom

    C = dgSurfdot(alpha, degenGeom, i);
    
    surf(degenGeom(i).surf.x, degenGeom(i).surf.y, degenGeom(i).surf.z, C.cp);
    aref = aref + C.aref;
    cdaref = cdaref + C.cd_aref;
    claref = claref + C.cl_aref;
    cmaref = cmaref + C.m;
    
end
colorbar
axis equal
aref
cd = cdaref/aref
cl = claref/aref
cm = cmaref(2)/aref
xcp = -cm/(cl * cos(alpha) + cd * sin(alpha))
xcp_clonly
% vsp.WriteVSPFile( filename );

function aerod = dgSurfdot(alpha, degenGeom, i)
    x = degenGeom(i).surf.x;
    y = degenGeom(i).surf.y;
    z = degenGeom(i).surf.z;
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
%     nvec_norm = sqrt(nvec(:,:,1).^2 + nvec(:,:,2).^2 + nvec(:,:,3).^2 );
    areas = degenGeom(i).surf.area;
    v_vec = [cos(alpha); 0; sin(alpha)];
    l_vec = [-1*sin(alpha); 0; cos(alpha)];
    cos_th = (nx .* v_vec(1)) + (ny .* v_vec(2)) + (nz .* v_vec(3));
    
    sin_th = (nx .* l_vec(1)) + (ny .* l_vec(2)) + (nz .* l_vec(3));

    aerod.cp = 2 * (abs(min(cos_th, 0)) .^2) ;
    aerod.aref = sum(sum(abs(min(nz, 0)) .* areas));
%     quiver3(cx, cy, cz, nx.*aerod.cp, ny.*aerod.cp, nz.*aerod.cp)
    aerod.cd_dist = aerod.cp .* -cos_th;
    aerod.cl_dist = aerod.cp .* -sin_th;
    aerod.cd_aref = sum(sum(aerod.cd_dist .* areas));
    aerod.cl_aref = sum(sum(aerod.cl_dist .* areas));
    aerod.cvec = cvec;
    aerod.nvec = nvec;
    Mvec = (cross(cvec, nvec, 3) .* aerod.cp) .* areas;
    Msum = sum(sum(Mvec, 1), 2);
    aerod.mvec = Mvec;
    aerod.m = [Msum(:,:,1), Msum(:,:,2), Msum(:,:,3)];
end

function geomid = FindGeomNamed(name)
    geomcell = vsp.FindGeomsWithName(name);
    geomid = geomcell{1};
end