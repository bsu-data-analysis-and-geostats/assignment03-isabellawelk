function rmse = rmse_train(A)
    n = 3;
    theta = deg2rad(10);
    global z_train v_train;

    vmodel = 80.0867 - (A * z_train.^(n + 1));

    rmse = sqrt(mean((vmodel - v_train).^2));
end
