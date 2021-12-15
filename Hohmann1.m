% Hohmann transfer 1 - from gateway to top of atmosphere

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
% peri = target periapse of transfer orbit
% Parameters: p = [planet radius (km); gravitational parameter; altitude of gateway orbit (km)]
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [entry] = Hohmann1(peri,p)

Rp = p(1); %3393.16;   % km
mu = p(2); %4.2828E4;  % km/s^3
r1 = Rp + p(3); %316;    % km
r2 = peri;

Vc1 = sqrt(mu/r1);  % circular velocity at gateway orbit (km/s)
Vc2 = sqrt(mu/r2);  % circular velocity at atmos orbit (km/s)

aH = (r1+r2)/2;     % apoapse of transer orbit (km)
VHp = sqrt(mu*((2/r2)-(1/aH)));     % velocity at periapse of transfer orbit (km/s)
VHa = sqrt(mu*((2/r1)-(1/aH)));     % velocity at apoapse of transfer orbit (km/s)

dV1 = Vc1 - VHa;    % dv from gateway orbit to transfer orbit (km/s)
dV2 = VHp - Vc2;    % dv from transfer orbit to atmos orbit (km/s)...
                    %       - Use if entering at circ. velocity

% get gamma at atmos entry
rp = r2;
e = 1-(rp/aH);
re = Rp+130; % top of atmos (km)

f = acos((aH*(1-e^2)-re)/(e*re));   % rad
gamma_rad = -atan2((e*sin(f)),(1+e*cos(f))); % rad

entry = [VHp*1000;gamma_rad;dV1*1000;dV2*1000]; % convert from km to m

end




