function [ GUCblend ] = Watermarking( GUC , GUClogo , r1 , r2 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    GUC = double(imread(GUC));
    GUClogo = double(imread(GUClogo));
    [r,c,rgb] = size(GUC);

    GUCblend = zeros(r,c);

    for k = 1:1:rgb
       for i = 1:1:r
          for j = 1:1:c
             GUCblend(i,j,k) = r1 * GUC(i,j,k) + r2 *GUClogo(i,j,k);  
          end
       end
    end

    figure;
    imshow(uint8(GUCblend));

end

