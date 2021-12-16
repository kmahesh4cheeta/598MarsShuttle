function [alpharange, cl, cd, l_d, x_cp, sref, swet] = AeroData(degenGeom,alpharange)
%AeroData Creates Database of Aerodynamic values required for spacecraft
%   Detailed explanation goes here

cl = [];
cd = [];
l_d = [];
x_cp = [];

for alpha=alpharange
    [cl1, cd1, xcp1, sref] = AeroForceMomentsAoA(alpha, degenGeom, false);
    cl = [cl cl1];
    cd = [cd cd1];
    l_d = [l_d cl1/cd1];
    x_cp = [x_cp xcp1];
end

end