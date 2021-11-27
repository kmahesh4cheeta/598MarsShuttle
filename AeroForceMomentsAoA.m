function [cl, cd, xcp, aref] = AeroForceMomentsAoA(alpha, degenGeom, PlotisTrue)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    ngeom = length(degenGeom);
    aref = 0;
    cdaref = 0;
    claref = 0;
    cmaref = [0,0,0];
    cfaref = [0,0,0];
    if PlotisTrue
        hold on
    end

    for i = 1:ngeom

        C = dgAeroForceMoment(alpha, degenGeom(i));
        
        if PlotisTrue
            surf(degenGeom(i).surf.x, degenGeom(i).surf.y, degenGeom(i).surf.z, C.cp);
        end        
        aref = aref + C.aref;
        cdaref = cdaref + C.cd_aref;
        claref = claref + C.cl_aref;
        cmaref = cmaref + C.m;
        cfaref = cfaref + C.f;
        
    end
    
    if PlotisTrue
        axis equal
        colorbar
    end
    cd = cdaref/aref;
    cl = claref/aref;
    cm = cmaref(2)/aref;
    cf = cfaref/aref;
    xcp = -cm/(cf(3));
end