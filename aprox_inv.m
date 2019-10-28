################################################################################
# Funcion que retorna la aproximación de la inversa "x" de la matriz "A".
# La condicion de parada esta dada por la norma de frobenius ||A*x-I||.
function x = aprox_inv(A,tol)
  # se obtiene las dimensiones de la matriz A
  [m,n] = size(A);
  # Inicializacion de la matriz "V".
  V = A*1e-8;
  # Matriz identidad.
  I = eye(m,n);
  # Ciclo que se ejecuta hasta que se cumpla la condicion de parada.
  do
    # Aproximacion de la inversa "x" de "A".
    x = V*(3*I-3*A*V+(A*V)^2);
    V = x;
  until(norm(A*x-I,"fro")<tol)
end
################################################################################