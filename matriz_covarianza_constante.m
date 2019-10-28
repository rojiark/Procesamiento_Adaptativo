################################################################################
#
# Procesamiento Adaptativo
# Ronny Jiménez, Fabricio León
#
################################################################################


# Function que retorna una matriz de covarianza "Rxx" constante con parametro
# "rho" y tamaño m x m.
function Rxx = matriz_covarianza_constante(rho,m)
  # Crea una matriz de unos de tamaño m x m.
  Rxx = ones(m);
  for i = 1:m
    for j = 1:m
      if i != j
        # Coloca una diagonal de valores iguales a "rho".
        Rxx(i,j) = rho;
      end
    end
  end
end
################################################################################