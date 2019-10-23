clear all;
clc;
A = rand(4,4);
tol = 1e-3;
x = aprox_inv(A,tol);