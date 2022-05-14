function [ Co ] = Co-occurrence( img )

x = double(imread(img));
[r, c] = size(x);
Co = zeros(256,256);

    for i=1:1:r-1
        for j=1:1:c
            temp = i+1;
            Co(x(i,j),x(temp,j))= Co(x(i,j),x(temp,j))+1;
        end
    end
    
    imshow(uint8(Co));
    
end

