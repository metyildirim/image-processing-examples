clear
X1 = [2 1 2; 3 4 1; 1 5 6];
H1 = [2 5; 1 2];
Y = convol2(X1,H1);

function Y = convol2(X, h)
    N1 = size(X,1);
    N2 = size(X,2);
    M1 = size(h,1);
    M2 = size(h,2);
    for n1=1: N1+M1
        for n2=1: N1+M1
            t=0;
            for k1=0: N1
                for k2=0: N1
                    if(k1 > 0 && k2 > 0 && k1 < N1+1 && k2 < N2+1 && n1-k1 > 0 && n2-k2 > 0 && n1-k1 < M1+1 && n2-k2 < M2+1)
                        t = t + X(k1,k2) * h(n1-k1,n2-k2);
                    end
                end
            end
            Y(n1,n2) = t;
        end
    end
end