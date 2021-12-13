Image = imread('C:\Users\DELL\Desktop\image processing\Lab 7\Task\morph.png');
Image = rgb2gray(Image);
Image = imbinarize(Image);
complement = ~Image

Fraction = WhiteCount(Image);
Fraction

%%%%%%%
ObjectsCount = CountObjects(Image);
ObjectsCount
%%%%%%%%%%%%%
HolesCount = CountHoles(complement);
HolesCount
%%%%%%%%%%%%%%%
Sqaurescount = CountSquares(Image);
owh_count = Objects_With_holes(Image);






