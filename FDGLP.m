function [ imgfil , imgout ] = FDGLP( img )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    %filterfz = fspecial('gaussian',[1000 1000]);
    I = double(imread(img));
    %figure(1);
    %imshow(I);
    
    filterz = fspecial('gaussian', 10 , 3);
    %filterz = 1- filterz;
    figure(1);
    imshow(filterz, []);
    imgfil = imfilter(I, filterz);
    %Iblur = 1- Iblur;
    %imgfil = imgfil -I;
    figure(2);
    imshow(uint8(imgfil), []);
    imgout = FourierTransform(imgfil);
    figure(3);
    imshow((imgout),[]);

end

