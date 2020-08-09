function [res,threshold]  = Matrix_Sparse(Sparsity, Matrix, dzdy)
if(isempty(dzdy))
    count = round(numel(Matrix)*Sparsity);
    matrix_abs = abs(Matrix);
    matrix_abs_reshape = reshape(matrix_abs, 1, []);
    t = sort(matrix_abs_reshape);
    threshold = t(count);
    locations = find(matrix_abs <= threshold);
    Matrix(locations) = 0;
    res = Matrix;
else
    res = dzdy;
    threshold = [];
    
end
end