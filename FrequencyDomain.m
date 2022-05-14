 function [ ] = FrequencyDomain( img1 , img2 )

img1 = (double(imread(img1)));
img1 = imresize(img1,0.5); 
img1 = fft2(img1);
img1 = fftshift(img1);
img2 = double(imread(img2));
img2 = fft2(img2);
img2 = fftshift(img2);

imgfz = abs(img1) .* exp(1i * angle(img2));
figure(1)
imshow(uint8(imgfz));
imgout = ifft2(imgfz);
figure(2)
imshow(uint8(imgout));

 end

