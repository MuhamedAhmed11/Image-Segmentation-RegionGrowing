% Region Growing Algorithm
clc; close all; clear
tic
% Read image
IMG = imread('woman.tif');
% figure; imshow(IMG)
% Define the IndexImage Matrix
IndexImage = zeros(size(IMG, 1), size(IMG, 2));
% Number of Rows and Cols
nRows = size(IMG,1);
nCols = size(IMG,2);
% Initialize Seed Number
SeedNumber = 0;
% Initialize Mean
MeanValue = zeros(3,1);  
% For every pixel IMG(x,y)
for i = 1 : nRows
    for j = 1 : nCols
        if(IndexImage(i,j)==0)
            SeedNumber = SeedNumber +1;
            % Current sum of all elements in the region
            Sum = double(IMG(i,j,:));
            % The Mean of one pixel value is the pixel value.
            MeanValue(:) = double(IMG(i, j, :));
            % Initialize a list to save neighboring pixels positions that
            % hold true.
            List = [];
            % Current position
            Position=[i j];
            % Current position is assigned an index if not assigned
            % previously.
            IndexImage(i,j) = SeedNumber;
            [IndexImage, List, MeanValue] = Explore_RGB(SeedNumber,Position, IMG, IndexImage, List, Sum, MeanValue);
            while(~isempty(List))
                Position = [List(1,1) List(1,2)];
                List(1,:) = [];
                [IndexImage, List, MeanValue] = Explore_RGB(SeedNumber,Position, IMG, IndexImage, List, Sum, MeanValue);
            end
        end
    end
end
Out_IMG = label2rgb(IndexImage);
imshow(Out_IMG); impixelinfo
toc