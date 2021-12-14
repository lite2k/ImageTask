Image = imread('D:\Image Processing\Lab 7\Task\morph.png');
Image = rgb2gray(Image);
Image = imbinarize(Image);
complement = ~Image;

Fraction = WhiteCount(Image);
Fraction

%%%%%%%
[label,ObjectsCount] = CountObjects(Image);
ObjectsCount
%%%%%%%%%%%%%
[label,HolesCount] = CountHoles(complement);
HolesCount
%%%%%%%%%%%%%%%

owh_count = Objects_With_holes(Image);
owh_count

Sqaurescount = CountSquares(Image);
Sqaurescount

SquaresWithHoles(Image);
CirclesWithoutHoles(Image);