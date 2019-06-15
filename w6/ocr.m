% Optical Character Recognition Example For 5 Selected Characters 
clear;

% Different 200x200 Character Samples for M, E, H, T and I
M1 = imread('C:/Users/ME/Desktop/M/m1.jpg');
M2 = imread('C:/Users/ME/Desktop/M/m2.jpg');
M3 = imread('C:/Users/ME/Desktop/M/m3.jpg');
M4 = imread('C:/Users/ME/Desktop/M/m4.jpg');
M5 = imread('C:/Users/ME/Desktop/M/m5.jpg');

E1 = imread('C:/Users/ME/Desktop/E/e1.jpg');
E2 = imread('C:/Users/ME/Desktop/E/e2.jpg');
E3 = imread('C:/Users/ME/Desktop/E/e3.jpg');
E4 = imread('C:/Users/ME/Desktop/E/e4.jpg');
E5 = imread('C:/Users/ME/Desktop/E/e5.jpg');

H1 = imread('C:/Users/ME/Desktop/H/h1.jpg');
H2 = imread('C:/Users/ME/Desktop/H/h2.jpg');
H3 = imread('C:/Users/ME/Desktop/H/h3.jpg');
H4 = imread('C:/Users/ME/Desktop/H/h4.jpg');
H5 = imread('C:/Users/ME/Desktop/H/h5.jpg');

T1 = imread('C:/Users/ME/Desktop/T/t1.jpg');
T2 = imread('C:/Users/ME/Desktop/T/t2.jpg');
T3 = imread('C:/Users/ME/Desktop/T/t3.jpg');
T4 = imread('C:/Users/ME/Desktop/T/t4.jpg');
T5 = imread('C:/Users/ME/Desktop/T/t5.jpg');

I1 = imread('C:/Users/ME/Desktop/I/i1.jpg');
I2 = imread('C:/Users/ME/Desktop/I/i2.jpg');
I3 = imread('C:/Users/ME/Desktop/I/i3.jpg');
I4 = imread('C:/Users/ME/Desktop/I/i4.jpg');
I5 = imread('C:/Users/ME/Desktop/I/i5.jpg');

% Getting One Channel(Red) of All Samples For Processing Them 
M1 = M1(:,:,1);
M2 = M2(:,:,1);
M3 = M3(:,:,1);
M4 = M4(:,:,1);
M5 = M5(:,:,1);
E1 = E1(:,:,1);
E2 = E2(:,:,1);
E3 = E3(:,:,1);
E4 = E4(:,:,1);
E5 = E5(:,:,1);
H1 = H1(:,:,1);
H2 = H2(:,:,1);
H3 = H3(:,:,1);
H4 = H4(:,:,1);
H5 = H5(:,:,1);
T1 = T1(:,:,1);
T2 = T2(:,:,1);
T3 = T3(:,:,1);
T4 = T4(:,:,1);
T5 = T5(:,:,1);
I1 = I1(:,:,1);
I2 = I2(:,:,1);
I3 = I3(:,:,1);
I4 = I4(:,:,1);
I5 = I5(:,:,1);

% Getting Feature Vector of Samples in Eight Directions
M1X = V8(M1);
M2X = V8(M2);
M3X = V8(M3);
M4X = V8(M4);
M5X = V8(M5);

E1X = V8(E1);
E2X = V8(E2);
E3X = V8(E3);
E4X = V8(E4);
E5X = V8(E5);

H1X = V8(H1);
H2X = V8(H2);
H3X = V8(H3);
H4X = V8(H4);
H5X = V8(H5);

T1X = V8(T1);
T2X = V8(T2);
T3X = V8(T3);
T4X = V8(T4);
T5X = V8(T5);

I1X = V8(I1);
I2X = V8(I2);
I3X = V8(I3);
I4X = V8(I4);
I5X = V8(I5);

% Calculating One Feature Vector For Every Character from Arithmetic Mean of Feature Vectors
M = zeros(1,8);
M(1) = (M1X(1) + M2X(1) + M3X(1) + M4X(1) + M5X(1)) / 5;
M(2) = (M1X(2) + M2X(2) + M3X(2) + M4X(2) + M5X(2)) / 5;
M(3) = (M1X(3) + M2X(3) + M3X(3) + M4X(3) + M5X(3)) / 5;
M(4) = (M1X(4) + M2X(4) + M3X(4) + M4X(4) + M5X(4)) / 5;
M(5) = (M1X(5) + M2X(5) + M3X(5) + M4X(5) + M5X(5)) / 5;
M(6) = (M1X(6) + M2X(6) + M3X(6) + M4X(6) + M5X(6)) / 5;
M(7) = (M1X(7) + M2X(7) + M3X(7) + M4X(7) + M5X(7)) / 5;
M(8) = (M1X(8) + M2X(8) + M3X(8) + M4X(8) + M5X(8)) / 5;

E = zeros(1,8);
E(1) = (E1X(1) + E2X(1) + E3X(1) + E4X(1) + E5X(1)) / 5;
E(2) = (E1X(2) + E2X(2) + E3X(2) + E4X(2) + E5X(2)) / 5;
E(3) = (E1X(3) + E2X(3) + E3X(3) + E4X(3) + E5X(3)) / 5;
E(4) = (E1X(4) + E2X(4) + E3X(4) + E4X(4) + E5X(4)) / 5;
E(5) = (E1X(5) + E2X(5) + E3X(5) + E4X(5) + E5X(5)) / 5;
E(6) = (E1X(6) + E2X(6) + E3X(6) + E4X(6) + E5X(6)) / 5;
E(7) = (E1X(7) + E2X(7) + E3X(7) + E4X(7) + E5X(7)) / 5;
E(8) = (E1X(8) + E2X(8) + E3X(8) + E4X(8) + E5X(8)) / 5;

H = zeros(1,8);
H(1) = (H1X(1) + H2X(1) + H3X(1) + H4X(1) + H5X(1)) / 5;
H(2) = (H1X(2) + H2X(2) + H3X(2) + H4X(2) + H5X(2)) / 5;
H(3) = (H1X(3) + H2X(3) + H3X(3) + H4X(3) + H5X(3)) / 5;
H(4) = (H1X(4) + H2X(4) + H3X(4) + H4X(4) + H5X(4)) / 5;
H(5) = (H1X(5) + H2X(5) + H3X(5) + H4X(5) + H5X(5)) / 5;
H(6) = (H1X(6) + H2X(6) + H3X(6) + H4X(6) + H5X(6)) / 5;
H(7) = (H1X(7) + H2X(7) + H3X(7) + H4X(7) + H5X(7)) / 5;
H(8) = (H1X(8) + H2X(8) + H3X(8) + H4X(8) + H5X(8)) / 5;

T = zeros(1,8);
T(1) = (T1X(1) + T2X(1) + T3X(1) + T4X(1) + T5X(1)) / 5;
T(2) = (T1X(2) + T2X(2) + T3X(2) + T4X(2) + T5X(2)) / 5;
T(3) = (T1X(3) + T2X(3) + T3X(3) + T4X(3) + T5X(3)) / 5;
T(4) = (T1X(4) + T2X(4) + T3X(4) + T4X(4) + T5X(4)) / 5;
T(5) = (T1X(5) + T2X(5) + T3X(5) + T4X(5) + T5X(5)) / 5;
T(6) = (T1X(6) + T2X(6) + T3X(6) + T4X(6) + T5X(6)) / 5;
T(7) = (T1X(7) + T2X(7) + T3X(7) + T4X(7) + T5X(7)) / 5;
T(8) = (T1X(8) + T2X(8) + T3X(8) + T4X(8) + T5X(8)) / 5;

I = zeros(1,8);
I(1) = (I1X(1) + I2X(1) + I3X(1) + I4X(1) + I5X(1)) / 5;
I(2) = (I1X(2) + I2X(2) + I3X(2) + I4X(2) + I5X(2)) / 5;
I(3) = (I1X(3) + I2X(3) + I3X(3) + I4X(3) + I5X(3)) / 5;
I(4) = (I1X(4) + I2X(4) + I3X(4) + I4X(4) + I5X(4)) / 5;
I(5) = (I1X(5) + I2X(5) + I3X(5) + I4X(5) + I5X(5)) / 5;
I(6) = (I1X(6) + I2X(6) + I3X(6) + I4X(6) + I5X(6)) / 5;
I(7) = (I1X(7) + I2X(7) + I3X(7) + I4X(7) + I5X(7)) / 5;
I(8) = (I1X(8) + I2X(8) + I3X(8) + I4X(8) + I5X(8)) / 5;

% Test
image = imread('C:/Users/ME/Desktop/Test/6.jpg');
image = image(:,:,1);

% Getting Feature Vector of Image to Test
imageV8 = V8(image);

% Euclidean Distance
DM = norm(M - imageV8);
DE = norm(E - imageV8);
DH = norm(H - imageV8);
DT = norm(T - imageV8);
DI = norm(I - imageV8);

if(DM < DE)
   min = DM;
   letter = 'M';
else
   min = DE;
   letter = 'E';
end
if(DH < min)
    min = DH;
    letter = 'H';
end
if(DT < min)
    min = DT;
    letter = 'T';
end
if(DI < min)
    min = DI;
    letter = 'I';
end

% Calculating Distance For Eight Directions
function V = Distance(I, dirX, dirY)
    if (dirX == 1 && dirY == 0)
        i = 1;
        y = 100;
    end
    if(dirX == -1 && dirY == 0)
        i = 200;
        y = 100;
    end
    if(dirX == 0 && dirY == 1)
        i = 100;
        y = 1;
    end
    if(dirX == 0 && dirY == -1)
        i = 100;
        y = 200;
    end
    if(dirX == -1 && dirY == 1)
        i = 200;
        y = 1;
    end
    if(dirX == 1 && dirY == -1)
        i = 1;
        y = 200;
    end
    if(dirX == 1 && dirY == 1)
        i = 1;
        y = 1;
    end
    if(dirX == -1 && dirY == -1)
        i = 200;
        y = 200;
    end
    
    V = 0;
    while I(y, i) == 255
        V = V + 1;
        i = i + dirX;
        y = y + dirY;
    end
end

% Creates Feature Vector
function Y = V8(X)
    Y = zeros(1,8);
    Y(1) = Distance(X,1,0);
    Y(2) = Distance(X,-1,0);
    Y(3) = Distance(X,0,1);
    Y(4) = Distance(X,0,-1);
    Y(5) = Distance(X,-1,1);
    Y(6) = Distance(X,1,-1);
    Y(7) = Distance(X,1,1);
    Y(8) = Distance(X,-1,-1);
end
