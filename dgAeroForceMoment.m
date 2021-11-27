function aerod = dgAeroForceMoment(alpha, degenGeom)
    x = degenGeom.surf.x;
    y = degenGeom.surf.y;
    z = degenGeom.surf.z;
    tr_mat = [cos(alpha) 0 sin(alpha); 0 1 0; -sin(alpha) 0 cos(alpha)];
    cx = (x(1:end-1,1:end-1)+x(2:end,2:end))/2;
    cy = (y(1:end-1,1:end-1)+y(2:end,2:end))/2;
    cz = (z(1:end-1,1:end-1)+z(2:end,2:end))/2;
    cvec = [];
    cvec(:,:,1) = cx;
    cvec(:,:,2) = cy;
    cvec(:,:,3) = cz;
    nx = degenGeom.surf.nx;
    ny = degenGeom.surf.ny;
    nz = degenGeom.surf.nz;
    nvec = [];
    nvec(:,:,1) = -nx;
    nvec(:,:,2) = -ny;
    nvec(:,:,3) = -nz;
    areas = degenGeom.surf.area;
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

    % For radii of curvature
    u = degenGeom.surf.u;
    w = degenGeom.surf.w;
    [K,H,Pmax,Pmin] = surfature(cx, cy, cz);
    cu = (u(1:end-1,1:end-1)+u(2:end,2:end))/2;
    cv = (w(1:end-1,1:end-1)+w(2:end,2:end))/2;
    Ki = griddedInterpolant(cu, cv, K);
    aerod.curv = Ki;

end