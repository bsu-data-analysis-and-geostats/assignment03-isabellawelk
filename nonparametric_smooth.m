function ymod = nonparametric_smooth(x,y,xmod,winsize)

% This function smooths a dataset of one variable using a weighted moving
% average

% Input: x = independent variable [n,1]
%       y = dependent variable [n,1]
%       xmod = locations of estimates [*,1]
%       windsize = size of half the window [1,1]

% Output: ymod = non-parametric smoothed estimates

x=x(:); y=y(:); xmod=xmod(:); % force column vectors
ymod = zeros(size(xmod))*NaN; %initializing

for i = 1:length(xmod)
    dist = sqrt((x-xmod(i)).^2); % distance function
    ival = find(dist<winsize); %

    if length(ival)>0
        weights = 15/16*(1-(dist(ival)/winsize).^2).^2; % bi-square kernel
        ymod(i)=sum(weights.*y(ival))./sum(weights); %modeled estimates
    end
end