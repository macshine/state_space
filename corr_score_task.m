corr_score_task(:,1) = corr(SCORE5(1:nTime1,1:10),task_combo(1:nTime1,1));
corr_score_task(:,2) = corr(SCORE5(nTime1+1:nTime1+nTime2,1:10),task_combo(nTime1+1:nTime1+nTime2,1));
corr_score_task(:,3) = corr(SCORE5(nTime1+nTime2+1:nTime1+nTime2+nTime3,1:10),task_combo(nTime1+nTime2+1:nTime1+nTime2+nTime3,1));
corr_score_task(:,4) = corr(SCORE5(nTime1+nTime2+nTime3+1:nTime1+nTime2+nTime3+nTime4,1:10),task_combo(nTime1+nTime2+nTime3+1:nTime1+nTime2+nTime3+nTime4,1));
corr_score_task(:,5) = corr(SCORE5(nTime1+nTime2+nTime3+nTime4+1:nTime1+nTime2+nTime3+nTime4+nTime5,1:10),task_combo(nTime1+nTime2+nTime3+nTime4+1:nTime1+nTime2+nTime3+nTime4+nTime5,1));
corr_score_task(:,6) = corr(SCORE5(nTime1+nTime2+nTime3+nTime4+nTime5+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6,1:10),task_combo(nTime1+nTime2+nTime3+nTime4+nTime5+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6,1));
corr_score_task(:,7) = corr(SCORE5(nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+nTime7,1:10),task_combo(nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+nTime7,1));

corr_score_task_d(:,1) = corr(SCORE5(1:nTime1-1,1:10),diff(task_combo(1:nTime1,1)));
corr_score_task_d(:,2) = corr(SCORE5(nTime1+1:nTime1+nTime2-1,1:10),diff(task_combo(nTime1+1:nTime1+nTime2,1)));
corr_score_task_d(:,3) = corr(SCORE5(nTime1+nTime2+1:nTime1+nTime2+nTime3-1,1:10),diff(task_combo(nTime1+nTime2+1:nTime1+nTime2+nTime3,1)));
corr_score_task_d(:,4) = corr(SCORE5(nTime1+nTime2+nTime3+1:nTime1+nTime2+nTime3+nTime4-1,1:10),diff(task_combo(nTime1+nTime2+nTime3+1:nTime1+nTime2+nTime3+nTime4,1)));
corr_score_task_d(:,5) = corr(SCORE5(nTime1+nTime2+nTime3+nTime4+1:nTime1+nTime2+nTime3+nTime4+nTime5-1,1:10),diff(task_combo(nTime1+nTime2+nTime3+nTime4+1:nTime1+nTime2+nTime3+nTime4+nTime5,1)));
corr_score_task_d(:,6) = corr(SCORE5(nTime1+nTime2+nTime3+nTime4+nTime5+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6-1,1:10),diff(task_combo(nTime1+nTime2+nTime3+nTime4+nTime5+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6,1)));
corr_score_task_d(:,7) = corr(SCORE5(nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+nTime7-1,1:10),diff(task_combo(nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+nTime7,1)));


corr(SCORE(1:nTime1,1:10),task_combo(1:nTime1,1));
corr(SCORE(nTime1+1:nTime1+nTime2,1:10),gamble_reg_conv'
corr(SCORE(nTime1+nTime2+1:nTime1+nTime2+nTime3,1:10),lang_reg_conv')
corr(SCORE(nTime1+nTime2+nTime3+1:nTime1+nTime2+nTime3+nTime4,1:10),motor_reg_conv')
corr(SCORE(nTime1+nTime2+nTime3+nTime4+1:nTime1+nTime2+nTime3+nTime4+nTime5,1:10),nback_reg_conv')
corr(SCORE(nTime1+nTime2+nTime3+nTime4+nTime5+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6,1:10),rel_reg_conv')
corr(SCORE(nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+1:nTime1+nTime2+nTime3+nTime4+nTime5+nTime6+nTime7,1:10),soc_reg_conv')
corr(SCORE(:,1:10),rest_combo)