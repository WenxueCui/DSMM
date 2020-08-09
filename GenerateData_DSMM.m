
%%% Generate the training data.

clear all;
close all;
clc

addpath(genpath('./.'));

batchSize      = 64;        %%% batch size
max_numPatches = batchSize*5000; 
modelName      = 'DSMM';
% sigma          = 25;         %%% Gaussian noise level

%%% training and testing
folder_train  = 'D:\Codes-Tao\ComCNN\data\Train400';  %%% training
folder_test   = 'D:\Codes-Tao\ComCNN\data\Test\Set68';%%% testing
size_input    = 96;          %%% training
size_label    = 96;          %%% testing
stride_train  = 57;          %%% training
stride_test   = 80;          %%% testing
val_train     = 0;           %%% training % default
val_test      = 1;           %%% testing  % default

%%% training patches
[inputs, labels, set]  = patches_generation(size_input,size_label,stride_train,folder_train,val_train,max_numPatches,batchSize);
%%% testing  patches
[inputs2,labels2,set2] = patches_generation(size_input,size_label,stride_test,folder_test,val_test,max_numPatches,batchSize);

inputs   = cat(4,inputs,inputs2);      clear inputs2;
labels   = cat(4,labels,labels2);      clear labels2;
set      = cat(2,set,set2);            clear set2;

if ~exist(modelName,'file')
    mkdir(modelName);
end

%%% save data
save(fullfile('data', modelName,'imdb'), 'inputs','labels','set','-v7.3')

