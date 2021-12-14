function [ SquareCount ] = CountSquares( Image )
%se = strel('square',5);
%im = imerode(Image,se);
%figure,imshow(im);
%[labels,SquareCount] = bwlabel(im);
%figure,imshow(labels);
SquareCount = 0;
[L ,num] = bwlabel(Image);
stats1 = regionprops (L,'EulerNumber' , 'Area' ,'ConvexArea', 'Perimeter' , 'BoundingBox');
sum1 = 0;
sum2 = 0;
square =0;
withholes = 0;
totalSquares = 0;
for R=1:num
    circularity = (stats1(R).Perimeter .^ 2) ./ (4 * pi * stats1(R).ConvexArea);
    if (circularity < 1) %Circles
        if stats1(R).EulerNumber == 1 %without holes
            sum1 = sum1 + 1;
           
        end
        if stats1(R).EulerNumber < 1 %with holes
            sum2 = sum2 + 1;
            
        end
    else %Square
        totalSquares = totalSquares+1;
        if (stats1(R).EulerNumber ==1) %without holes
             %bb = stats1(R).BoundingBox;
             stats1(R).Perimeter
             %rectangle('position',bb,'edgecolor','r','linewidth',1.3);
            square = square + 1;
        else %withholes
            figure,imshow(stats1(R).BoundingBox);
            withholes = withholes + 1 ;
        end
   
    end
end

totalSquares
end

