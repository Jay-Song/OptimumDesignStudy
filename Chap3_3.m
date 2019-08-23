clc
clear all
close all

[x1,x2] = meshgrid(-1:0.1:25.0, -1:0.1:25.0);
f= 400*x1+600*x2;
g1= x1+x2-16;
g2 = x1./28 + x2./14 - 1; % scalar division .* ./ .^
g3 = x1/14 + x2/24 - 1;
g4 = -x1;
g5 = -x2;

%Initialization
cla reset
axis auto

%specify labels
xlabel('x1 - number of A machines'), ylabel('x2 - number of B machines')
title('Profit Maximization Problem')
hold on

cv1 = [0 0];
const1 = contour(x1, x2, g1, cv1, 'k', 'LineWidth', 3);
text(2, 16, 'g1')
cv11 = [0.15:0.15:0.9];
const1 = contour(x1, x2, g1, cv11, 'r');

const2 = contour(x1, x2, g2, cv1, 'k', 'LineWidth', 3);
text(15.5, 5.4, 'g2');
cv21=[0.01:0.01:0.05];
const1 = contour(x1, x2, g2, cv21, 'r');

const3 = contour(x1, x2, g3, cv1, 'k', 'LineWidth', 3);
const3 = contour(x1, x2, g3, cv21, 'r');
text(2, 23, 'g3');

cv41=[0.1:0.1:.6];
const4 = contour(x1, x2, g4, cv1, 'k', 'LineWidth', 3);
const4 = contour(x1, x2, g4, cv41, 'r');
text(.25, 20, 'g4');

const5 = contour(x1, x2, g5, cv1, 'k', 'LineWidth', 3);
const5 = contour(x1, x2, g5, cv41, 'r');
text(19, 1, 'g5');

text(2,5, 'feasible region')
fv=[2400, 4800, 7200, 8800];
fs=contour(x1, x2, f, fv, 'k--');
hold off