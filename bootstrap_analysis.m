for i = 1:100

    rand_vec = rand(200,1);
    [~,sort_rand] = sort(rand_vec);
    sub_order = [1:1:200]';
    sub_rand = sub_order(sort_rand);
    sub_rand = sub_rand(1:100,1);
    [sub_rand1,~] = sort(sub_rand);
    
    data_boot = nanmean(data_concat(:,:,sub_rand1),3);
    
    [coeff_boot(:,:,i),score_boot(:,:,i),~,~,exp_boot(:,i)] = pca(data_boot');
    
    sprintf('%d',i)
    
end
