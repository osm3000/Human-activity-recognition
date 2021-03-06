% 18-697: Statistical Discovery and Learning
% ------------------------------------------
% Project: Generate pre-processed data set
%
% Operations include:
%   - Retrieve Measures for Feature Generation
%   - Feature extraction: Mean and Std Deviation
%   - Generate Training and Testing Data Set
%   - Generate Validation Data Set for Parameter Evaluation
%

clear all
close all
clc
addpath(genpath(pwd));

%% Load original separated and unprocessed sensor data
load('left_classall_clean')
load('right_classall_clean')

%% Extract unprocessed features and labels and merge both original data sets
[...
    features_both, labels_both,...
    features_left, labels_left,...
    features_right, labels_right...
    ] = skodaEstablishFeaturesLabels(left_classall_clean, right_classall_clean);
%% Pre-process data with feature extraction and randomization
[...
    features_all_processed, labels_all_processed,...
    features_left_processed, labels_left_processed,...
    features_right_processed, labels_right_processed...
    ] = skodaPreProcessData();

% ALWAYS RUN THIS FILE TO GENERATE NEW DATASET
