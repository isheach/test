clc;
clear;
close all;

a1 = [0.4, 0.5];
b1 = [0.2, 0.2];
a2 = [0.2, 0.4];
b2 = [1, 0.3];

u = randn(1, 1000);
y1 = LinearGenerate(a1, b1, u, 1, 'mode', 'full');
y2 = LinearGenerate(a2, b2, y1, 1, 'mode', 'full');
y3 = ReLinearGenerate(a1, b1, y2, 1, 'mode', 'full');

y4 = LinearGenerate(a2, b2, u, 1, 'mode', 'full');

plot(y3)
hold on
% plot(y3)
plot(y4)