clc;
close all;
I = imread('DINOSAUR.jpg'); %read the image
double = im2double(I); %change image to double value
lap = [0 -1 0;-1 5 -1;0 -1 0]; %3x3 laplacian filter
filter = imfilter(double,lap,'conv'); %add the filter

figure;
subaxis(1,2,1,'Spacing',0.01,'Padding',0,'Margin',0); %calling subaxis
imshow(I);title('Original Image');
subaxis(1,2,2,'Spacing',0.01,'Padding',0,'Margin',0);
imshow(filter);title('Laplacian Image');
