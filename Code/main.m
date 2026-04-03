clc;
clear;
close all;

% Load image (FIX PATH HERE)
img = imread('input.jpg');   % <-- Put image in same folder

% Convert to grayscale
if size(img,3) == 3
    gray = rgb2gray(img);
else
    gray = img;
end

% Call function
enhanced = process_image(gray);

% Display
figure;
subplot(1,2,1); imshow(gray); title('Original');
subplot(1,2,2); imshow(enhanced); title('Enhanced');