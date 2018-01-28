function [P, k] = fixpt(g, p0, tol, maxi)
P(1) = p0;
for k = 2:maxi
    P(k) = feval(g, P(k-1));
    err = abs(P(k)-P(k-1));
    relerr = err/(abs(P(k)) + eps);
    if (err<tol) || (relerr<tol)
        break;
    end
end
if k == maxi
    disp('maximum number of iterations exceeded')
end
P = P';

    
    