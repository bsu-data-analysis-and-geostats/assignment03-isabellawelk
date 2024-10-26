function [V_mod,RMS] = velocity(A,n,v0,z)
    
% 
% INPUTS: A n v0
% OUTPUTS: Velocity RMS error
% 

    rho = 917; %kg/m3
    g = 9.8; % m/s2
    theta = deg2rad(10);
    
    V_mod = v0 - A*((rho*g*sin(theta)).^n)*z.^(n+1);

end