% Creating image
image = zeros(201, 201);
image(101, :) = 255;

figure(1);
imshow(image);
title("Image with only 255 values at 101th row.")

figure(2);
imshow(log(abs(fftshift(fft2(image)))+1), [-1,18]);
title("Frequency Response.")
colormap('jet');colorbar;