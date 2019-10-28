################################################################################
#
# Procesamiento Adaptativo
# Ronny Jiménez, Fabricio León
#
################################################################################


# Funcion que retorna como resultado una matriz "A" con tres diagonales.
# Una diagonal central de valor "cen". Una diagonal a la izquierda de esta de
# valor "izq" y otra diagonal a la derecha de la central de valor "der".
function A = triple_diagonal(izq,cen,der,m)
  # Crea una matriz de ceros de tamaño m x m.
  A = zeros(m,m);
  for i = 1:m
    for j = 1:m
      # Diagonal central. Cuando "i" es igual a "j".
      if i == j
        A(i,j) = cen;
        # Si el subindice "j" no sobrepase el tamaño de la matriz se coloca el
        # valor "der" en la diagonal derecha.
        if j < m
          A(i,j+1) = der;
        end
        # Si el subindice "i" no sobrepase el tamaño de la matriz se coloca el
        # valor "izq" en la diagonal izquierda.
        if i < m
          A(i+1,j) = izq;
        end
      end
    end
  end
end
################################################################################