close all; clear all; clc;

net = newp([0 1; -2 2], 1);
W1 = [0 0 1 1; 0 1 0 1];
T1 = [0 0 0 1];
net = init(net);
Sym_przed = sim(net, W1)
net.trainParam.epochs = 20;
net = train(net, W1, T1);
Sym_po = sim(net, W1)