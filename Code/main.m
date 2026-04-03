clc;
clear;
close all;

% Load image (JUST NAME, no path)
img = imread('DetectingEdgesSlide.png');

% Convert to grayscale
if size(img,3) == 3
    gray = rgb2gray(img);
else
    gray = img;
end

% Call function
enhanced = process_image(gray);

% Display results
figure;
subplot(1,2,1); imshow(gray); title('Original');
subplot(1,2,2); imshow(enhanced); title('Enhanced');

disp('Code executed successfully!');
