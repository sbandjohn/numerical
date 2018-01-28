function [Y, T] = cheby_eval(C, X)
% C: a row vector, coefficient list of chebyshev approximation
% X: a row vector
n = length(C);
T(1, :) = ones(size(X));
T(2, :) = X;
for k = 3:n
    T(k, :) = 2*X.*T(k-1) - T(k);
end
Y = zeros(size(X));
for k = 1:n
    Y = Y + C(k)*T(k, :);
end

