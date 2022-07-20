% Region Growing Algorithm
clc; close all; clear
tic
% Read image
IMG = imread('medtest.png');
% figure; imshow(IMG)
% Define the IndexImage Matrix
IndexImage = zeros(size(IMG));
% Number of Rows and Cols
nRows = size(IMG,1);
nCols = size(IMG,2);
% Initialize Seed Number
SeedNumber = 0;
% For every pixel IMG(x,y)
for i = 1 : nRows
    for j = 1 : nCols
        if(IndexImage(i,j)==0)
            SeedNumber = SeedNumber +1;
            % The Mean of one pixel value is the pixel value.
            MeanValue = double(IMG(i,j));
            % Initialize a list to save neighboring pixels positions that
            % hold true.
            List = [];
            % Current position
            Position=[i j];
            % Current position is assigned an index if not assigned
            % previously.
            IndexImage(i,j) = SeedNumber;
            [IndexImage, List, MeanValue] = Explore_GS(SeedNumber,Position, IMG, IndexImage, List, MeanValue);
            while(~isempty(List))
                Position = [List(1,1) List(1,2)];
                List(1,:) = [];
                [IndexImage, List, MeanValue] = Explore_GS(SeedNumber,Position, IMG, IndexImage, List, MeanValue);
            end
        end
    end
end
Out_IMG = label2rgb(IndexImage);
figure; imshow(Out_IMG); impixelinfo
toc