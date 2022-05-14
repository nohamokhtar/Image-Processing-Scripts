function [ img ] = convTime( img1 , img2 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%'pattern.tif','plus.tif'
    img1 = double(imread(img1));
    img2 = double(imread(img2));
    %img1 = double(((imread('plus.tif'))));
    %img2 = inv(double(imread('pattern.tif')));
    img =conv2(img1,img2);
    %img = img1 . img2;
    figure(1);
    imshow(img,[]);

end

