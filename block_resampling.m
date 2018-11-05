%% score task block resampling

length_data = 1976;

for i = 1:5000
   
    cut = round(rand*length_data);
    size_cut1 = length_data - cut + 1;
    max_task_cut(:,1:size_cut1) = p_grp_avg(:,cut:end);
    max_task_cut(:,size_cut1+1:length_data) = p_grp_avg(:,1:cut-1);
    
    arousal_perm1(:,i) = corr(arousal_tr,max_task_cut');

    
    sprintf('%d',i)
    
end

for x = 1:4
    for y = 1:5
        task_up(y,x) = prctile(task_perm(y,x,:),99.5);
    end
end


for x = 1:4
    for y = 1:5
        task_down(y,x) = prctile(task_perm(y,x,:),.5);
    end
end



%% topic block resampling

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    max_topic_cut(1:size_cut1,1) = max_topic(:,cut:end);
    max_topic_cut(size_cut1+1:1940,1) = max_topic(:,1:cut-1);
    
    for x = 1:4
       
        topic_cut_score(:,x,i) = nanmean(SCORE5(max_topic_cut==x,1:5));
        
    end
    
    sprintf('%d',i)
    
end

for x = 1:4
    for y = 1:5
        topic_up(y,x) = prctile(topic_cut_score(y,x,:),99.5);
    end
end


for x = 1:4
    for y = 1:5
        topic_down(y,x) = prctile(topic_cut_score(y,x,:),.5);
    end
end


%% topic manifold resampling

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    max_topic_cut(1:size_cut1,1) = max_topic(cut:end,1);
    max_topic_cut(size_cut1+1:1940,1) = max_topic(1:cut-1,1);
    
    for x = 1:4
        for y = 1:4
            topic_cut_osc(x,y,i) = nansum(osc==x&max_topic_cut==y);
        end
    end
    
    sprintf('%d',i)
    
end

for x = 1:4
    for y = 1:4
        topic_osc_up(x,y) = prctile(topic_cut_osc(x,y,:),99.5);
    end
end


for x = 1:4
    for y = 1:4
        topic_osc_down(x,y) = prctile(topic_cut_osc(x,y,:),.5);
    end
end


%% topic block resampling

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    max_topic_cut(1:size_cut1,1) = max_topic(cut:end,1);
    max_topic_cut(size_cut1+1:1940,1) = max_topic(1:cut-1,1);
    
    for x = 1:4
        for y = 1:18
       
            topic_cut_task(y,x,i) = nansum(max_topic_cut==x & task_combo4(:,y)>0);
        
        end
    end
    
    sprintf('%d',i)
    
end

for x = 1:4
    for y = 1:18
        topic_task_up(y,x) = prctile(topic_cut_task(y,x,:),97.5);
    end
end


for x = 1:4
    for y = 1:18
        topic_task_down(y,x) = prctile(topic_cut_task(y,x,:),2.5);
    end
end

%% nad block resampling

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    max_nad_cut(1:size_cut1,1) = nt_max(cut:end,1);
    max_nad_cut(size_cut1+1:1940,1) = nt_max(1:cut-1,1);
    
    for x = 1:2
       
        nad_cut_score(:,x,i) = nanmean(SCORE5(max_nad_cut==x,1:5));
        
    end
    
    sprintf('%d',i)
    
end

for x = 1:2
    for y = 1:5
        nad_up(y,x) = prctile(nad_cut_score(y,x,:),99.5);
    end
end


for x = 1:2
    for y = 1:5
        nad_down(y,x) = prctile(nad_cut_score(y,x,:),.5);
    end
end




%% nad topic block resampling

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    max_nad_cut(1:size_cut1,1) = nt_max(cut:end,1);
    max_nad_cut(size_cut1+1:1940,1) = nt_max(1:cut-1,1);
    
    for x = 1:2
        for y = 1:4
            nad_topic_cut_score(y,x,i) = nansum(max_nad_cut==x & max_topic==y);
        end
    end
    
    sprintf('%d',i)
    
end

for x = 1:2
    for y = 1:4
        nad_topic_up(y,x) = prctile(nad_topic_cut_score(y,x,:),99.5);
    end
end


for x = 1:2
    for y = 1:4
        nad_topic_down(y,x) = prctile(nad_topic_cut_score(y,x,:),.5);
    end
end



%% nad topic block resampling

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    max_nt_cut(:,1:size_cut1) = data_nt1(:,cut:end);
    max_nt_cut(:,size_cut1+1:1940) = data_nt1(:,1:cut-1);
    
    for x = 1:8
        for y = 1:5
            nt_cut_score(x,y,i) = nanmean(SCORE5(max_nt_cut(x,:)>0,y));
        end
    end
    
    sprintf('%d',i)
    
end

for x = 1:2
    for y = 1:4
        nad_topic_up(y,x) = prctile(nad_topic_cut_score(y,x,:),99.5);
    end
end


for x = 1:2
    for y = 1:4
        nad_topic_down(y,x) = prctile(nad_topic_cut_score(y,x,:),.5);
    end
end


%% participation block resampling (score)

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    pm_cut(1:size_cut1,1) = pm(cut:end,1);
    pm_cut(size_cut1+1:1940,1) = pm(1:cut-1,1);
    
    for x = 1:5    
        pm_cut_score(x,i) = corr(SCORE5(:,x),pm_cut);
    end
    
    sprintf('%d',i)
    
end

for x = 1:5
    pm_up(x,1) = prctile(pm_cut_score(x,:),97.5);
    pm_down(x,1) = prctile(pm_cut_score(x,:),2.5);
end




%% participation block resampling (osc)

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    pm_cut(1:size_cut1,1) = pm(cut:end,1);
    pm_cut(size_cut1+1:1940,1) = pm(1:cut-1,1);
    
    for y = 1:4
        pm_cut_osc(y,i) = nanmean(pm_cut(osc2==y));
    end

    
    sprintf('%d',i)
    
end

for x = 1:4
    pm_osc_up(x,1) = prctile(pm_cut_osc(x,:),97.5);
    pm_osc_down(x,1) = prctile(pm_cut_osc(x,:),2.5);
end


%% participation block resampling (topic)

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    pm_cut(1:size_cut1,1) = pm(cut:end,1);
    pm_cut(size_cut1+1:1940,1) = pm(1:cut-1,1);
    
    for y = 1:4
        pm_cut_topic(y,i) = nanmean(pm_cut(max_topic==y));
    end

    
    sprintf('%d',i)
    
end

for x = 1:4
    pm_topic_up(x,1) = prctile(pm_cut_topic(x,:),97.5);
    pm_topic_down(x,1) = prctile(pm_cut_topic(x,:),2.5);
end


%% participation block resampling (score)

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    pm_cut(1:size_cut1,1) = pm(cut:end,1);
    pm_cut(size_cut1+1:1940,1) = pm(1:cut-1,1);
    
    for x = 1:10       
        pm_cut_score(x,i) = corr(SCORE5(:,x),pm_cut);
    end
    
    sprintf('%d',i)
    
end

for x = 1:5
    pm_up(x,1) = prctile(pm_cut_score(x,:),97.5);
    pm_down(x,1) = prctile(pm_cut_score(x,:),2.5);
end




%% participation block resampling (score)

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    p_cut(:,1:size_cut1) = p(:,cut:end);
    p_cut(:,size_cut1+1:1940) = p(:,1:cut-1);
    
    for j = 1:375      
        p_cut_fit(j,:,i) = glmfit(SCORE5(:,1:5),p_cut(j,:)','normal');
    end
    
    sprintf('%d',i)
    
end

for x = 1:5
    for j = 1:375
        p_cut_up(j,x) = prctile(p_cut_fit(j,x,:),97.5);
        p_cut_down(j,x) = prctile(p_cut_fit(j,x,:),2.5);
    end
end





%% participation block resampling (score)

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    pm_cut(1:size_cut1,1) = pm(cut:end,1);
    pm_cut(size_cut1+1:1940,1) = pm(1:cut-1,1);
    
    for x = 1:10       
        pm_cut_score(x,i) = corr(SCORE5(:,x),pm_cut);
    end
    
    sprintf('%d',i)
    
end

for x = 1:5
    pm_up(x,1) = prctile(pm_cut_score(x,:),97.5);
    pm_down(x,1) = prctile(pm_cut_score(x,:),2.5);
end





for i = 1:1000
    
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    p_cut(:,1:size_cut1) = p(:,cut:end);
    p_cut(:,size_cut1+1:1940) = p(:,1:cut-1);
    
    for j = 1:375
        p_cut_fit(j,:,i) = glmfit(SCORE5(:,1:5),p_cut(j,:)','normal');
    end
    
    sprintf('%d',i)
end

%% pm assortativity

for i = 1:5000
   
    cut = round(rand*1940);
    size_cut1 = 1940 - cut + 1;
    assort_cut(1:size_cut1,1) = asst2(cut:end,1);
    assort_cut(size_cut1+1:1940,1) = asst2(1:cut-1,1);
    
    for x = 1:5    
        assort_cut_score(x,i) = corr(SCORE5(:,x),assort_cut,'rows','pairwise');
    end
    
    sprintf('%d',i)
    
end

for x = 1:5
    asst_up(x,1) = prctile(assort_cut_score(x,:),97.5);
    asst_down(x,1) = prctile(assort_cut_score(x,:),2.5);
end