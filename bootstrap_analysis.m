nsubs = 100;
nsubs2 = 200;
%data_concat = REGIONS x TIME, CONCATENATED ACROSS 200 SUBJECTS (i.e. 375 regions x 368,000 time points)

for i = 1:nsubs

    rand_vec = rand(nsubs2,1);
    [~,sort_rand] = sort(rand_vec);
    sub_order = [1:1:nsubs2]';
    sub_rand = sub_order(sort_rand);
    sub_rand = sub_rand(1:nsubs,1);
    [sub_rand1,~] = sort(sub_rand);
    
    data_boot = nanmean(data_concat(:,:,sub_rand1),3);
    
    [coeff_boot(:,:,i),score_boot(:,:,i),~,~,exp_boot(:,i)] = pca(data_boot');
    
    sprintf('%d',i)
    
end
