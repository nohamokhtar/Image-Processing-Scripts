function [ fimg, invimg ] = FDILP( img )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    img = imread(img);
    [r c] = size(img);
    filter = ones(r, c);
    
    filter = rgb2gray(insertShape(filter, 'FilledCircle', [c/2 r/2 400], 'Color', 'black', 'Opacity', 1));
    fimg = fft2(img).*filter;
    invimg = (ifft2(fimg));
    invimg = abs(invimg);
    
    [r2,c2]= size(invimg);
    inv2 = zeros(r2,c2);
    inv2 = fftshift(fimg);
    inv2 = abs(inv2);
    inv2 = log(inv2);
    
    figure;
    imshow(uint8(invimg), []); 
    
    figure; 
    imshow(inv2, []);
end

