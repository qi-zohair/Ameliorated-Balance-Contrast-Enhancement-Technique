%% Title: Satellite Image Enhancement Using an Ameliorated Balance Contrast Enhancement Technique

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen. “Satellite Image Enhancement Using an Ameliorated Balance Contrast Enhancement Technique.” 
% Traitement du Signal, vol. 37, no. 2, (2020): pp. 245-254. 
% DOI: 10.18280/ts.370210
%% INPUTS
% x --> is a given unclear image
% delta -- > is a brightness adjustment parameter
% lambda -- > is a contrast adjustment parameter
%% OUTPUT
% out --> a contrast-enhanced image.


%% Starting implementation %%
clear all; clc; close all;
x = im2double(imread('26.jpg'));

lambda = 14; delta=6;
tic; out = ABCETP (x, lambda, delta); toc;

figure; imshow(x);title('INPUT IMAGE');
figure;imshow(out);title('OUTPUT IMAGE');
% imwrite(out,'ABCETP_out.jpg')