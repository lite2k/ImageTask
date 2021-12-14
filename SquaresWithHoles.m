function [  ] = SquaresWithHoles( Image )
[L ,num] = bwlabel(Image);
stats1 = regionprops (L,'EulerNumber' , 'Area' ,'ConvexArea', 'Perimeter' , 'BoundingBox');
newImage = Image;
newImage(:)=0;
figure,imshow(Image);
for R=1:num
    circularity = (stats1(R).Perimeter .^ 2) ./ (4 * pi * stats1(R).ConvexArea);
    if (circularity > 1) %Squares
        if (stats1(R).EulerNumber < 1) 
            %figure,imshow(stats1(R).BoundingBox);
            bb = stats1(R).BoundingBox;
            rectangle('position',bb,'edgecolor','r','linewidth',1.3);
            bb = stats1(R).BoundingBox;
            for i =  floor(bb(2)):bb(2)+bb(4)
                for j = floor(bb(1)) : bb(3)+bb(1) 
                    newImage (i,j) = Image(i,j);
                end
            end
            
        end
   
    end
end
figure,imshow(newImage);

end