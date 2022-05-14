function [ value , img ] = convFreq( img1 , img2 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%'pattern.tif','plus.tif'
    img1 = double(imread(img1));
    img2 = double(imread(img2));
    %img1 = double(((imread('plus.tif'))));
    %img2 = inv(double(imread('pattern.tif')));
    img1 = fft2(abs(img1));
    img2 = fft2(abs(img2));
    %img =conv2(img1,img2);
    value = img1 .* img2;
    img = ifftshift(ifft2(value));
    figure(1);
    imshow(img,[]);

end