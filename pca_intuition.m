
% create three random time series (with no autocorrelation)
data_null = rand(1000,3);

% make a plot
figure(1)
scatter3(data_null(:,1),data_null(:,2),data_null(:,3))
set(gcf,'color','w')
xlabel('ts1')
ylabel('ts2')
zlabel('ts3')
title('Null')

% correlation matrix
data_null_corr = corr(data_null);

% mean off-diagonal correlation
null_off_diag = sum(sum(triu(data_null_corr - eye(3))))/size(data_null_corr,1);

% run PCA on null data
[cf_null,sc_null,~,~,ex_null] = pca(data_null);


%% add some off-diagonal correlation structure
data_struct = data_null;
data_struct(:,2) = data_struct(:,1)*.9 + data_struct(:,2);
data_struct(:,3) = data_struct(:,2)*.8 + data_struct(:,3);

% make a plot
figure(2)
scatter3(data_struct(:,1),data_struct(:,2),data_struct(:,3))
set(gcf,'color','w')
xlabel('ts1')
ylabel('ts2')
zlabel('ts3')
title('Structure')

% correlation matrix
data_struct_corr = corr(data_struct);

% mean off-diagonal correlation
struct_off_diag = sum(sum(triu(data_struct_corr - eye(3))))/size(data_struct_corr,1);

% run PCA on null data
[cf_struct,sc_struct,~,~,ex_struct] = pca(data_struct);




