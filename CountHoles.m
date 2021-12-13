function [ labels , HolesCount ] = CountHoles( Image )
[labels, HolesCount] = bwlabel(Image);
HolesCount = HolesCount-1;
%figure,imshow(labels);
end

