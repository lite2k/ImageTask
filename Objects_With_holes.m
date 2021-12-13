function [owh_count] = Objects_With_holes(Image)
    %se = strel('square',10);
    %im = imopen(Image,se);
    %figure,imshow(im);
    %[ label, owh_count ] = bwlabel(im);

    owh_im = regionprops(Image, 'EulerNumber');
    owh_count = find([STATS.EulerNumber] <= 0);

end
