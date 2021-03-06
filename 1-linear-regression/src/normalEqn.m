function [theta] = normalEqn(X, y)
% Computes the closed-form solution to linear regression using the normal equations 
theta = zeros(size(X, 2), 1);
% compute the closed form solution to linear regression and put the result in theta.
theta= pinv(X'*X)*X'*y;
end
