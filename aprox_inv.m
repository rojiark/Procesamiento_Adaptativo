function x = aprox_inv(A,tol)
  [m,n] = size(A);
  V = A*0.001;
  I = eye(m,n);
  do
    x = V*(3*I-3*A*V+(A*V)^2);
    V = x;
  until(norm(A*x-I,"fro")<tol)
end
# Documentar
