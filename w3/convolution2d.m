%TEST
clear
X = imread("image.jpg");
h = [1 -1; 1 -1; 1 -1];
Y = convol2(X, h);
Y = uint8(Y);
imshow(Y);

%FUNCTION
function Y = convol2(X, h)
    X = double(X);
    N1 = size(X, 1);
    N2 = size(X, 2);
    M1 = size(h, 1);
    M2 = size(h, 2);
    for n1=2: N1+M1
        for n2=2: N2+M2
            t=0;
            for k1=1: N1
                for k2=1: N2
                    if(n1-k1 > 0 && n2-k2 > 0 && n1-k1 < M1+1 && n2-k2 < M2+1)
                        t = t + X(k1, k2) * h(n1-k1, n2-k2);
                    end
                end
            end
            Y(n1-1, n2-1) = t;
        end
    end
end