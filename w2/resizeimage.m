close all
X = imread('folder/image.jpg');
Xr = imresize(X, [100 100]);
imshow(Xr);
