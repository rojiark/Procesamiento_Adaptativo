################################################################################
clc;
################################### m vs e_k ###################################
clear all;
m = 2:100;
rho = 0.5;
sigma = 1;
tol = 10e-4;
for i = 1:length(m)
  [K,e_k(i)] = solucion_problA(m(i),rho,sigma,tol);
end
figure(1);
plot(m,e_k);
title("m vs e_k");
xlabel("m");
ylabel("e_k");
xlim([min(m),max(m)]);
ylim([min(e_k),max(e_k)]);
grid on;
pause;
################################# sigma vs e_k #################################
clear all;
m = 50;
rho = 0.5;
sigma = 0.1:0.1:5;
tol = 10e-4;
for i = 1:length(sigma)
  [K,e_k(i)] = solucion_problA(m,rho,sigma(i),tol);
end
figure(2);
plot(sigma,e_k);
title("sigma vs e_k");
xlabel("sigma");
ylabel("e_k");
xlim([min(sigma),max(sigma)]);
ylim([min(e_k),max(e_k)]);
grid on;
pause;
################################## rho vs e_k ##################################
clear all;
m = 50;
rho = 0.011:0.01:0.99;
sigma = 1;
tol = 10e-4;
for i = 1:length(rho)
  [K,e_k(i)] = solucion_problA(m,rho(i),sigma,tol);
end
figure(3);
plot(rho,e_k);
title("rho vs e_k");
xlabel("rho");
ylabel("e_k");
xlim([min(rho),max(rho)]);
ylim([min(e_k),max(e_k)]);
grid on;
pause;
################################################################################