function [ im5 ] = FourierTransform( img )
%UNTITLED Summary of this function goes here
%   a function that takes as input an image in the time/ spatial domain and outputs the % corresponding image in the frequency domain by means of Fourier Transform

im = fft2(img);
im2 = fftshift(im);
im3 = abs(im2);
im4 = log(im3+1);
%im4 = real(im4);
im5 = imresize(im5, 0.5);
%figure;
%imshow(im5,[]);
end

