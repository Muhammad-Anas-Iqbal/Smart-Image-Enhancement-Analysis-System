Smart-Image-Enhancement-Analysis-System

Overview
This project is developed as part of the **Digital Image Processing Lab 06**.  
The goal is to design a system that takes a low-quality image and improves its visual quality using different image processing techniques in MATLAB.



Objective
- To enhance image quality (contrast & brightness)
- To understand image processing concepts practically
- To build a complete image enhancement pipeline


Techniques Used

1. Image Acquisition
- Load image using `imread`
- Convert RGB to grayscale using `rgb2gray`
- Analyze resolution and pixel values



2. Sampling & Quantization
- Resizing image (0.25, 0.5, 1, 1.5, 2)
- Bit depth reduction (8-bit, 4-bit, 2-bit)
- Observed quality degradation and detail loss



3. Geometric Transformations
- Rotation (multiple angles)
- Translation
- Shearing
- Attempted inverse transformations



4. Intensity Transformations
- Negative transformation
- Log transformation
- Gamma correction (γ = 0.5, 1.5)



5. Histogram Processing
- Histogram plotting
- Contrast analysis
- Histogram Equalization



6. Final Enhancement System
A pipeline was developed to enhance images:

1. Histogram Equalization (contrast improvement)
2. Gamma Correction (brightness adjustment)


Key Concepts Learned
- Image representation (pixels, resolution)
- Effect of scaling and quantization
- Role of histogram in contrast improvement
- Spatial transformations and their effects
- Practical implementation of image enhancement

How to Run

1. Open MATLAB (Online/Desktop)
2. Place all files in the same folder:
   - `main.m`
   - `process_image.m`
   - Input image
3. Run:
```matlab
main
