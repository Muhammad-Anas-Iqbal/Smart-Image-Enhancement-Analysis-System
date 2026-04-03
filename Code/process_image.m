function enhanced = process_image(input)

    % Step 1: Contrast enhancement
    step1 = histeq(input);

    % Step 2: Brightness adjustment
    step2 = im2double(step1).^0.5;

    % Step 3: Convert back
    enhanced = im2uint8(step2);

end
