function featuresNorm = NormalizeFeatures(features, vAlpha)
% Normalize image features to have zero mean and unit variance. This
% normalization can cause k-means clustering to perform better.
%
% INPUTS
% features - An array of features for an image. features(i, j, :) is the
%            feature vector for the pixel img(i, j, :) of the original
%            image.
%
% OUTPUTS
% featuresNorm - An array of the same shape as features where each feature
%                has been normalized to have zero mean and unit variance.

features = double(features);


[nPix, nFeat] = size(features);


featMean = mean(features);
featStd = std(features);

featuresNorm = (features - repmat(featMean, [nPix, 1])) ./ repmat(featStd,[nPix, 1]);


end