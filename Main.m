Image = imread('C:\Users\DELL\Desktop\image processing\Lab 7\Task\morph.png');
grey_image = rgb2gray(Image);
bin_image = imbinarize(Image);
logical_image = logical(Image);
complement = ~Image

%%%%%%%%%%%%%%%%%%%%

Fraction = WhiteCount(bin_image);
Fraction

%%%%%%%%%%%%%

ObjectsCount = CountObjects(bin_image);
ObjectsCount

%%%%%%%%%%%%%

HolesCount = CountHoles(complement);
HolesCount

%%%%%%%%%%%%%%%

owh_count = Objects_With_holes(logical_image);
owh_count

%%%%%%%%%%%%%%%

Sqaurescount = CountSquares(bin_image);