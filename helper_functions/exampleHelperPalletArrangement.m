function goalLoc = exampleHelperPalletArrangement(id,palletLoc,palletDim,boxDim)
%EXAMPLEHELPERPALLETARRANGEMENT computes the position of the current box on the
% pallet based on its location in the palletizing pattern.

%   Copyright 2024 The MathWorks, Inc.

% Support both scalar and [L W H]
if numel(boxDim) == 1
    boxL = boxDim;
    boxW = boxDim;
    boxH = boxDim;
else
    boxL = boxDim(1);
    boxW = boxDim(2);
    boxH = boxDim(3);
end

% Expand dimensions slightly to avoid collisions
boxLxy = 1.1 * boxL;
boxWxy = 1.1 * boxW;

% Number of rows and columns
nRows = floor(palletDim(1)/boxLxy);
nCols = floor(palletDim(2)/boxWxy);

% Determine pallet corner location
cornerLocation = zeros(1,3);

cornerLocation(1) = palletLoc(1) + palletDim(1)/2;
cornerLocation(2) = palletLoc(2) + palletDim(2)/2;
cornerLocation(3) = palletLoc(3) + palletDim(3)/2;

% Boxes per layer
nBoxesPerLayer = nRows * nCols;

% Determine layer
layerID = ceil((id+1)/nBoxesPerLayer);

idInLayer = (id+1) - nBoxesPerLayer*(layerID - 1);

% Row and column IDs
rowID = ceil(idInLayer/nCols);
colID = mod(idInLayer-1,nCols)+1;

% Compute goal location
goalLoc = zeros(1,3);

goalLoc(1) = cornerLocation(1) ...
    - (rowID-1)*boxLxy ...
    - boxLxy/2;

goalLoc(2) = cornerLocation(2) ...
    - (colID-1)*boxWxy ...
    - boxWxy/2;

goalLoc(3) = cornerLocation(3) ...
    + (layerID-1)*boxH ...
    + boxH/2;

goalLoc = double([goalLoc(1) goalLoc(2) goalLoc(3)]);

end