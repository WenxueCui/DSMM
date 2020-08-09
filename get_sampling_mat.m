function res = get_sampling_mat(net, sparsity)

w1 = net.layers{1}.weights{1};
w1 = Matrix_Sparse(sparsity,w1,[]);
w1 = Matrix_orth(w1,[]);

dim = size(w1,4);
res = rand(dim,1024);
for i = 1: dim
    temp = w1(:,:,:,i);    
    res(i,:) = reshape(temp,1,[]);
end

end