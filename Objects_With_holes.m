function [cols] = Objects_With_holes(Image)
    %se = strel('square',10);
    %im = imopen(Image,se);
    %figure,imshow(im);
    %[ label, owh_count ] = bwlabel(im);

    owh_im = regionprops(Image, 'EulerNumber');
    owh_count = find([ owh_im.EulerNumber] <= 0);
    [rows cols]=size(owh_count);
   
    
end
