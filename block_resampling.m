%% score task block resampling

length_data = 1940;
niter = 5000;
% data1 and data2 are the original data (organized as length_data x 1 vectors)

for i = 1:niter
   
    cut = round(rand*length_data);
    size_cut1 = length_data - cut + 1;
    data2_cut(:,1:size_cut1) = data2(:,cut:end);
    data2_cut(:,size_cut1+1:length_data) = data2(:,1:cut-1);
    
    null_perm(:,i) = corr(data1,data2_cut');

    sprintf('%d',i)
    
end

sig_up = prctile(null_perm,97.5);
sig_down = prctile(null_perm,2.5);

