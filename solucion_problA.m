function [K,e_k] = solucion_problA(m,rho,sigma,tol)
  A = triple_diagonal(1,3,1,m);
  I = eye(m);
  Rxx = rho*ones(m); # ¿Matriz constante con parametro rho?
  Rxy = Rxx*conj(A);
  Ryy = A*Rxx*conj(A) + (sigma^2)*I;
  K = Rxy*aprox_inv(Ryy,tol);
  Ryx = A*Rxx;
  e_k = trace(Rxx-Rxy*aprox_inv(Ryy,tol)*Ryx);
end
# Documentar