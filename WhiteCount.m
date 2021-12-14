function [ Fraction ] = WhiteCount( Image )
[H,W,D] = size(Image);
count = 0;
for i = 1:H
    for j = 1:W
        if(Image(i,j) == 1)
            count = count + 1;
        end
    end
end

Fraction = (count/(H*W)); 
end

