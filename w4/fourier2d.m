%2d fourier transform

function Y = Fourier2(X)
    X = double(X);
    M = size(X, 1);
    N = size(X, 2);
    Y = zeros(M, N);
    
    for k = 0: M-1
        for l = 0: N-1
            value = 0;
            for m = 0: M-1
                for n = 0: N-1
                    value = value + X(m+1, n+1)*exp(-1j*2*pi*(k*m/M + l*n/N));
                end
            end
            Y(k+1, l+1) = value;
        end 
    end
    Y = round(Y,7,'decimals');
end