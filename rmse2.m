function rmse = rmse2(A)
    n = 3;
    theta = deg2rad(10);
    global z v;

    vmodel = 80.0867 - (A * z.^(n + 1));

    rmse = sqrt(mean((vmodel - v).^2));
end
