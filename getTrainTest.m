function [trainset, testset] = getTrainTest(data,pTrain)

% isabella welk (1 Oct 24)
% USE: partitions data into training test sets
% INPUTS: Full data data=[ns,nd] dataset with ns samples and nd columns
            % pTrain = percent of fata to use for training
% OUTPUTS:trainset = data to use for training
            % testset = data to use for testing

[ns,nd] = size(data); % ns = number of samples, nd = number of dimensions
nsTrain = round(pTrain*ns); % number of samples for training
Ix = 1:ns; % vector of indicies
IxTrain = randsample(Ix,nsTrain,true); % Indicies for training
trainset = data(IxTrain,:); % data for training

IxTest = ones(size(Ix)); % vector of ones
IxTest(IxTrain) = 0; % remove the indicies to the training data
IxTest = logical(IxTest); % make IxTest logical
testset = data(IxTest,:); % data for testing