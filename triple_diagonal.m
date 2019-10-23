function A = triple_diagonal(izq,cen,der,m)
  A = zeros(m,m);
  for i = 1:m
    for j = 1:m
      if i == j
        A(i,j) = cen;
        if j < m
          A(i,j+1) = der;
        end
        if i < m
          A(i+1,j) = izq;
        end
      end
    end
  end
end
# Documentar