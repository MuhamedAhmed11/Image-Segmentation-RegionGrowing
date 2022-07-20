function [IndexImage, List, MeanValue] = Explore_GS(Seed_Number, Position, IMG, IndexImage, List, MeanValue)
Thresh = 40; % Change it to cope with with each image.
Num = 1;
% nRows and nCols
nRows = size(IMG,1);
nCols = size(IMG,2);
% The seed point
Seed_X = Position(1);
Seed_Y = Position(2);
% The four neighborhood connectivity
% Neigh = [-1 0; 0 1 ;1 0 ; 0 -1];
%-------------------Fill in the Blank-------------------------------------%
% The eight neighborhood connectivity
Neigh = [-1 0; 0 1 ;1 0 ; 0 -1; -1 1; 1 1; 1 -1; -1 -1];
%-------------------Fill in the Blank-------------------------------------%
for k = 1: length(Neigh)
    Xn = Seed_X + Neigh(k,1); % x-adjacent
    Yn = Seed_Y + Neigh(k,2); % y-adjacent 
    if((Xn>=1)&&(Yn>=1)&&(Xn<=nRows)&&(Yn<=nCols)) % This is to avoid the borders.
        
        err = abs(IMG(Xn,Yn) - MeanValue);
        if(IndexImage(Xn,Yn)==0 && ((err <= Thresh)))
            Num = Num + 1; % The number of pixels that hold true.
            MeanValue = (MeanValue*(Num - 1) + double(IMG(Xn, Yn)))/Num;
            List = [List; Xn Yn];
            IndexImage(Xn,Yn) = Seed_Number;
        end
    end
end