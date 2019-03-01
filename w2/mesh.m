close all
X = imread('folder/image.jpg');
X = X(:,:,1);
mesh(X);