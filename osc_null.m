for i = 1:5000
	
    randvec = rand(1940,1);
    [~,sort_rand] = sort(randvec);
    osc_rand = osc(sort_rand);
    
    for x = 1:4
        for y = 1:4
            topic_osc_rand(x,y,i) = sum(double(topic_ts==x)' & double(osc_rand==y));
        end
    end
    sprintf('%d',i)
end

for x = 1:4
for y = 1:4
topic_osc_up(x,y) = prctile(topic_osc_rand(x,y,:),97.5);
topic_osc_down(x,y) = prctile(topic_osc_rand(x,y,:),2.5);
end
end

for i = 1:5000
	
    randvec = rand(1940,1);
    [~,sort_rand] = sort(randvec);
    osc_rand = osc2(sort_rand);
    
    for x = 1:4
        for y = 1:4
            topic_osc2_rand(x,y,i) = sum(double(topic_ts==x)' & double(osc_rand==y));
        end
    end
    sprintf('%d',i)
end

for x = 1:4
for y = 1:4
topic_osc2_up(x,y) = prctile(topic_osc2_rand(x,y,:),97.5);
topic_osc2_down(x,y) = prctile(topic_osc2_rand(x,y,:),2.5);
end
end