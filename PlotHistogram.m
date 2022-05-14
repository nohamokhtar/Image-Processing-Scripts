function [  ] = PlotHistogram( img )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%A function that takes as input an image of any type (gray scale or RGB) and plots
%its corresponding histogram. 
%Note: The three histograms generated for the RGB images must be 3D histograms

rimg = double(imread(img));
[r, c,rgb] = size(rimg);
ar = [1:255];

if rgb == 1
    
    His= zeros(255,1);
    
    for i=1:1:r
        for j=1:1:c
            x =rimg(i,j);
            His(x+1,1) = His(x+1,1) + 1;
        end
    end
    
    plot(ar,His);

else
    rg= zeros(256,256);
    rb= zeros(256,256);
    bg = zeros(256,256);

    for i=1:1:r
        for j=1:1:c
            %for c=1:1:rgb
                r =rimg(i,j,1);
                g =rimg(i,j,2);
                b =rimg(i,j,3);
                rg(r+1,g+1) = rg(r+1,g+1)+1;
                rb(r+1,b+1) = rb(r+1,b+1)+1;
                bg(b+1,g+1) = bg(b+1,g+1)+1;
            %end
        end
    end
    
    Count = zeros(256,3);
    
for i = 1:1:256
    for j = 1:1:256
       for c= 1:1:2
           for c2=2:1:3
               if c== c2
                   c2=3;
               end
               %Count(i,c)= 
           end
       end
    end
end
    
       figure(1);
       %plot(ar,His);   
       mesh([1:256],[1:256],rg);
       figure(2);
       mesh([1:256],[1:256],rb);
       figure(3);
       mesh([1:256],[1:256],bg);

end

