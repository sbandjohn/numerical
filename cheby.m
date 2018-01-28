function [C,X,Y] = cheby(fun, n, a, b)
if nargin == 2
    a=-1; b=1;
end
d = pi/(2*n+2);
C = zeros(1, n+1);
X = zeros(1, n+1);
for k = 1:n+1
    X(k) = cos(d*(2*k-1));
end
X = (b-a)*X/2 + (b+a)/2;
x = X;
Y = eval(fun);
A = zeros(n+1, 1);
for j = 1:n+1
    z = (j-1)*d;
    for k = 1:n+1
        A(k) = cos(z*(2*k-1));
    end
    C(j) = Y*A;
end
C = 2*C/(n+1);
C(1) = C(1)/2;
