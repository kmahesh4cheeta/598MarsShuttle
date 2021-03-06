% Hohmann transfer 2 - from top of atmosphere to gateway

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assumptions:
% 1) sperical planet
% 2) massless
% 3) coplanar
% 4) circular orbits
% 5) top of atmosphere at 130 km 
% 6) gateway orbit at 316km (near MRO)
% 7) skip dV2, enter atmos at transfer orbit V & gamma
% 
% INPUTS:
% Vehicle state vector: X = [velocity, flight path angle; mass; altiitude (m)]
% Parameters: p = [planet radius (km); gravitational parameter; altitude of gateway orbit (km)]
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [exit] = Hohmann2(X,p)

Rp = p(1); %3393.16;   % km
mu = p(2); %4.2828E4;  % km/s^3
r2 = Rp + p(3);     % km
r1 = Rp + X(4)/1000; %316;    % km


Vc1 = sqrt(mu/r1);  % circular velocity at atmos orbit (km/s)

% % Use if exiting atmos. at non-zero gamma
% V = X(1);
% gamma = X(2);
% V0 = [V*cos(gamma);V*sin(gamma)];
% Vc0 = [0;Vc1];
% dV0_vec = Vc0-V0;
% dV0 = norm(dV0_vec);

Vc2 = sqrt(mu/r2);  % circular velocity at gateway orbit (km/s)

aH = (r2+r1)/2;     % semi-major axis of transer orbit (km)
VHp = sqrt(mu*((2/r1)-(1/aH)));     % velocity at periapse of transfer orbit (km/s)
VHa = sqrt(mu*((2/r2)-(1/aH)));     % velocity at apoapse of transfer orbit (km/s)

dV1 = VHp - Vc1;    % dv from transfer orbit to atmos orbit (km/s)
dV2 = Vc2 - VHa;    % dv from gateway orbit to transfer orbit (km/s)

% exit = [dV1;dV2;dV0]; % Use if exiting atmos. at non-zero gamma
exit = [dV1;dV2];

end




