% Read the image
image = imread('puppy.jpg');

% Check if the image is loaded correctly
if ~isempty(image)
    % Display the image
    imshow(image);
    
    % Save the original image
    imwrite(image, 'output.jpg');
    
    % Convert the image to grayscale
    gray_image = rgb2gray(image);
    imwrite(gray_image, 'gray_output.jpg');
    
    % Create the complement image (invert the image)
    complement_image = 255 - image;
    imwrite(complement_image, 'complement_output.jpg');
else
    disp('Image not found or could not be loaded');
end
