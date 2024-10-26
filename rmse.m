function RMSE = rmse(predicted, actual)

rmse = sqrt(mean((predicted-actual).^2));

end