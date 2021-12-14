function [ label, ObjectsCount ] = CountObjects( Image )
se = strel('disk', 6);
close = imclose(Image, se);
im = imerode(close,se);
[label, ObjectsCount] = bwlabel(im);
%figure,imshow(im);
end

