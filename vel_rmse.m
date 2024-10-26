function RMSE = vel_rmse(A,n,v,z,v0)

% USE: to calculate RMSE values
% INPUT: observed= observed value; predicted = predicted value 
% OUTPUT: RMSE value
rho = 917;
g = 9.8;
theta = deg2rad(10);

v_mod = v0 - A * (rho * g * sin(theta)).^n .* z.^(n+1);
diff = v_mod-v;    
RMSE = sqrt(mean(diff.^2));

end
