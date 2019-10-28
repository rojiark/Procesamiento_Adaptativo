################################################################################
#
# Procesamiento Adaptativo
# Ronny Jiménez, Fabricio León
#
################################################################################

function Rxx = matriz_constante(rho,m)
  Rxx = ones(m);
  for i = 1:m
    for j = 1:m
      if i != j
        Rxx(i,j) = rho;
      end
    end
  end
end
################################################################################