%% 1. IMAGE ACQUISITION & UNDERSTANDING (Lab 01)
% Load image and display metadata [3]
img_rgb = imread('input_image.jpg'); % Ensure image is in your path
img_gray = rgb2gray(img_rgb);

fprintf('--- Image Metadata ---\n');
fprintf('Resolution: %d x %d\n', size(img_gray, 1), size(img_gray, 2));
fprintf('Data Type: %s\n', class(img_gray));
fprintf('Partial Matrix (5x5):\n');
disp(img_gray(1:5, 1:5));

%% 2. SAMPLING & QUANTIZATION ANALYSIS (Lab 02)
% Down-sample to 0.25 and 0.5; Up-sample to 1.5 and 2.0 [3, 4]
img_low = imresize(img_gray, 0.25);
img_high = imresize(img_gray, 2.0);

% Reduce bit depth to 2-bit (4 levels) [5, 6]
% StepSize = 256 / 2^2 = 64
quantized_2bit = uint8(floor(double(img_gray) / 64) * 64);

%% 3. GEOMETRIC TRANSFORMATIONS (Lab 03)
% Rotation and Shearing [4, 7, 8]
img_rotated = imrotate(img_gray, 45, 'bilinear', 'crop');

% Horizontal Shearing using Affine Transformation [4, 9]
htform = affine2d([1 0 0; 0.5 1 0; 0 0 1]);
img_sheared = imwarp(img_gray, htform);

%% 4. INTENSITY TRANSFORMATIONS & HISTOGRAM (Labs 04 & 05)
% Apply Gamma Correction (Best for brightening) [10-12]
img_gamma = im2double(img_gray) .^ 0.5; 

% Histogram Equalization [12, 13]
img_equalized = histeq(img_gray);

%% 5. FINAL INTEGRATED SYSTEM (The "App" Function)
% Call the modular function to get the final enhanced output [12]
enhanced_output = process_image(img_gray);

% Display Final Results
figure;
subplot(1,2,1); imshow(img_gray); title('Original Low-Quality Image');
subplot(1,2,2); imshow(enhanced_output); title('Enhanced Final Output');

%% MODULAR PIPELINE FUNCTION
function enhanced_image = process_image(input_image)
    % This function integrates the "best selected methods" [12]
    
    % Step 1: Contrast Enhancement (Histogram Equalization)
    step1 = histeq(input_image);
    
    % Step 2: Brightness Adjustment (Gamma Correction gamma = 0.5)
    % Convert to double for math operations [11]
    step2 = im2double(step1) .^ 0.5;
    
    % Step 3: Final scaling back to uint8
    enhanced_image = im2uint8(step2);
end
