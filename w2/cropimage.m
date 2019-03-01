close all
X = imread('folder/image.jpg');
Xc = imcrop(X, [90 80 320 320]);
imshow(Xc);