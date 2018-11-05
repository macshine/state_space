for x = 1:1000
    rand_vec = rand(1940,1);
    [~,sort_rand] = sort(rand_vec);
    osc_rand = osc(sort_rand);
        for y = 1:4
            nt_osc_rand(:,y,x) = nanmean(nt_weight2(:,osc_rand==x),2);
        end
    sprintf('%d',x)
end


for x = 1:38
    for y = 1:4
        nt_osc_up(x,y) = prctile(nt_osc_rand(x,y,:),99.9999999999);
    end
end