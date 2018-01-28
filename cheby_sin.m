lst = [3, 5, 7, 10, 15, 40, 100]
for n = lst
    disp('n is')
    n
    [C,X,Y1] = cheby('sin(x)', n);
    Y2 = cheby_eval(C,X)
    figure(n);
    plot(X, Y1, '-.r', X, Y2, '-.k' );
end
