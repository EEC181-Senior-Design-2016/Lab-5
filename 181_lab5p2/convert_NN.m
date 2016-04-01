clc;
clear all;
load('testSet.mat');
load('NN.mat');

dlmwrite('finalB1L1.txt', finalB1L1.', ' ');
dlmwrite('finalB1L2.txt', finalB1L2.', ' ');
dlmwrite('finalSoftmaxTheta.txt', finalSoftmaxTheta, ' ');
dlmwrite('finalW1L1.txt', finalW1L1, ' ');
dlmwrite('finalW1L2.txt', finalW1L2, ' ');
dlmwrite('testData.txt', testData.', ' ');
dlmwrite('testLabels.txt', testLabels.', ' ');
