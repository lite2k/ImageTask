function [ SquareCount ] = CountSquares( Image )
se = strel('square',5);
im = imerode(Image,se);
figure,imshow(im);
[labels,SquareCount] = bwlabel(im);


end

