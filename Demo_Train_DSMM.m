
%%% Note: run the 'GenerateData_model_64_25_Res_Bnorm_Adam.m' to generate
%%% training data first.
clc
clear all
close all

%[batchdata_x_train,batchdata_x_test,train_num,test_num] = makebatches2;
run 'F:\matconvnet-1.0-beta23\matlab\vl_setupnn.m'

%%%-------------------------------------------------------------------------
%%% configuration
%%%-------------------------------------------------------------------------
opts.modelName        = 'DSMM'; %%% model name
% opts.learningRate     = [logspace(-3,-3,30) logspace(-4,-4,20)];%%% you can change the learning rate
opts.learningRate     = [logspace(-3,-4,30) logspace(-4,-5,70) logspace(-5,-6,20)];
opts.batchSize        = 32; %%% default
opts.gpus             = []; %%% this code can only support one GPU!


%%% solver
opts.solver           = 'Adam';
%opts.solver           = 'SGD';

opts.gradientClipping = false; %%% Set 'true' to prevent exploding gradients in the beginning.
opts.expDir      = fullfile('data', opts.modelName);
opts.imdbPath    = fullfile(opts.expDir, 'imdb.mat');

opts.models_dir = 'models';

%%%-------------------------------------------------------------------------
%%%   Initialize model and load data
%%%-------------------------------------------------------------------------
%%%  model
net  = feval(['CSCNN_init_',opts.modelName]);
%net = CSCNN_init_model_64_96_Adam_dep();

%%%  load data
imdb = load(opts.imdbPath) ;

%%%-------------------------------------------------------------------------
%%%   Train 
%%%-------------------------------------------------------------------------

[net, info] = CSCNN_train(net, imdb, ...
    'expDir', opts.expDir, ...
    'learningRate',opts.learningRate, ...
    'solver',opts.solver, ...
    'gradientClipping',opts.gradientClipping, ...
    'batchSize', opts.batchSize, ...
    'modelname', opts.modelName, ...
    'gpus',opts.gpus) ;






