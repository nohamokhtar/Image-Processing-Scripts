function [  ] = HistogramEqualization( img )
%UNTITLED3 Summary of this function goes here
%   A function that applies histogram equalization for any image (Gray-scale or RGB).
    
    x = double(imread(img));
    [r, c,rgb] = size(x);
    
    if rgb == 1
        His= zeros(255,1);
        nx = zeros(r , c , rgb);
        cumm= size(His);
        cummHis= zeros(255,1);

            for i=1:1:r
                for j=1:1:c
                    k =x(i,j);
                    His(k,1) = His(k,1) + 1;
                end
            end
            min = 0;
            max= 0;
            for l=1:1:cumm
                l2 = l-1;
                if 0<l2
                    cummHis(l)= cummHis(l2)+ His(l,1);

                    if cummHis(l)>0 && cummHis(l2)==0
                        min= l;  
                    end

                    if cummHis(l2)>0 && cummHis(l)==0
                        max= l2;  
                    end
                end
            end

            max = 256;
            intensities = max - min;
            intensities = 256;

            for i=1:1:r
                for j=1:1:c
                    %nx(i,j) = cummHis(x(i,j)) * (255 / 60000);
                    nx(i,j) = ((intensities-1)/60000)*cummHis(x(i,j));
                end
            end
            %figure;
            %plot(ar,cummHis);
            figure;
            imshow(uint8(x));
            figure;
            imshow(uint8(nx));
    elseif rgb ==3
        His= zeros(255,3);
        nx = zeros(r , c , rgb);
        cumm= size(His);
        cummHis= zeros(255,3);

            for i=1:1:r
                for j=1:1:c
                    for m = 1:1:rgb
                        k =x(i,j,m);
                        His(k,m) = His(k,m) + 1;
                    end
                end
            end
            %min = 0;
            %max= 0;
            for l=1:1:cumm
                for m=1:1:rgb
                    l2 = l-1;
                    if 0<l2
                        cummHis(l,m)= cummHis(l2,m)+ His(l,m);

                        if cummHis(l,m)>0 && cummHis(l2,m)==0
                            min(m)= l;  
                        end

                        if cummHis(l2,m)>0 && cummHis(l,m)==0
                            max(m)= l2;  
                        end
                    end
                end
            end

            max(1) = 256;
            max(2) = 256;
            max(3) = 256;
            intensities = max - min;
            intensities(1) = 256;
            intensities(2) = 256;
            intensities(3) = 256;

            for i=1:1:r
                for j=1:1:c
                    for m=1:1:rgb
                        %nx(i,j) = cummHis(x(i,j)) * (255 / 60000);
                        nx(i,j,m) = ((intensities(m)-1)/60000)*cummHis(x(i,j,m));
                    end
                end
            end
            %figure;
            %plot(ar,cummHis);
            figure;
            imshow(uint8(x));
            figure;
            imshow(uint8(nx));
    end

end

