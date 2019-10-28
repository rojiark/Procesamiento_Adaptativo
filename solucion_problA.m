################################################################################
#
# Procesamiento Adaptativo
# Ronny Jiménez, Fabricio León
#
################################################################################


# Funcion que soluciona el problema A.
function [K,e_k] = solucion_problA(m,rho,sigma,tol)
  # Se crea una matriz de triple diagonal "A".
  A = triple_diagonal(1,3,1,m);
  # Matriz identidad de tamaño m x m.
  I = eye(m);
  # Matriz de covarianza constante "Rxx" con parametro "rho".
  Rxx = matriz_covarianza_constante(rho,m);
  # Matriz de covarianza "Rxy".
  Rxy = Rxx*conj(A);
  # Matriz de covarianza "Ryy".
  Ryy = A*Rxx*conj(A) + (sigma^2)*I;
  # Aproximación "K" de la inversa de "Ryy"
  K = Rxy*aprox_inv(Ryy,tol);
  # Matriz de covarianza "Ryx".
  Ryx = A*Rxx;
  # Error general e_k.
  e_k = trace(Rxx-Rxy*aprox_inv(Ryy,tol)*Ryx);
end
################################################################################