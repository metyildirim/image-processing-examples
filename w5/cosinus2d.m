% 2d cosinus transform

function Y = Cosinus2(X)
    X = double(X);
    M = size(X, 1);
    N = size(X, 2);
    Y = zeros(M, N);
    for p=0: M-1
        for q=0:N-1
            deger = 0;
            for m=0:M-1
                for n=0:N-1
                    deger = deger + X(m+1, n+1)*cos(pi*(2*m+1)*p/(2*M))*cos(pi*(2*n+1)*q/(2*N));
                end
            end
            if(p == 0)
               pa = 1 / sqrt(M);
            end
            if(p > 0)
               pa = sqrt(2/M); 
            end
            if(q == 0)
               qa = 1 / sqrt(N);
            end
            if(q > 0)
               qa = sqrt(2/N); 
            end       
            Y(p+1,q+1) = deger * pa * qa;
        end
    end
    Y = round(Y,7,'decimals');
end