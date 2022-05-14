# Image-Processing-Scripts

## PlotHistogram Script

A function that takes as input an image of any type (gray scale or RGB) and plots
its corresponding histogram. 
Note: The three histograms generated for the RGB images must be 3D histograms.


## HistogramEqualization Script

A function that applies histogram equalization for any image (Gray-scale or RGB).

## Co-occurrence Matrix

A function that takes as input a gray-scale image and shows its co-occurrence matrix as output.

## Fourier Transform
A function that takes as input an image in the time/ spatial domain and outputs the corresponding image in the frequency domain by means of Fourier Transform.

## Convolution

### "convTime" 
function that takes as input two images (both in time/ spatial domain) and outputs an image resulting from their convolution.
### convFreq
It is known that convolution in the time domain corresponds to multiplication in
the frequency domain. Accordingly, "convFreq" function that takes as input two images in time domain, converts them to their corresponding images in the frequency domain. Then, outputs two images: An image in the frequency domain resulting from point multiplication. Another image
in the time domain after applying inverse fourier transform on the output time
domain image
## Filters in Frequency Domain
A function that takes as input an image in the time/ spatial domain and a filter in the frequency domain. The output should be the filtered image in the frequency domain and another filtered image in the time domain after applying inverse fourier transform.
(Hint: "fspecial" used to create the filters in time domain and then convert them into frequency domain using the function Fourier Transform)

- Filters in Frequency Domain ideal low pass filter (FDILP)
- Filters in Frequency Domaingaussian low pass filter (FDGLP)
- Filters in Frequency Domainideal high pass filter (FDIHP) 
- Filters in Frequency Domain gaussian high pass filter (FDGHP)

## Frequency Domain 
A function that takes as input two images in the time/ spatial domain. Your function should get the magnitude/ spectrum part from the first image (i.e. image X) by means of absolute, and the phase angle/ phase spectrum part from the second image (i.e. image Y) 
(phase angle = tan-1(Image=magnitue)).
Then, a new image (first output of function) should be formed using this equation
FreqDomain = abs(Y ): * exp(i * angle(X)). Finally, inverse fourier transform must
be applied to the new image resulting in an image in time domain (second output).
