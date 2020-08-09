function res = Matrix_orth(Matrix,dzdy)
if(isempty(dzdy))
    for i = 1:size(Matrix,4)
        Matrix_temp = Matrix(:,:,:,i);
        Matrix_temp = squeeze(Matrix_temp);
        exps = exp(Matrix_temp);
        exps_sum = sum(sum(exps));  
        Matrix(:,:,:,i) = exps/exps_sum;
    end
    res = Matrix;
else
    for i = 1:size(Matrix,4)
        Matrix_temp = Matrix(:,:,:,i);
        Matrix_temp = squeeze(Matrix_temp);
        exps = exp(Matrix_temp);
        exps_sum = sum(sum(exps));
        daoshu = (exps*exps_sum-exps.*exps)/(exps_sum*exps_sum);
        Matrix(:,:,:,i) = squeeze(dzdy(:,:,:,i)).*daoshu;
    end
    res = Matrix;
    
end
end