topic0 = MRIread('v4-topics-50_0_action_actions_motor_pFgA_z_FDR_0.01.nii.gz');
topic5 = MRIread('v4-topics-50_5_face_faces_recognition_pFgA_z_FDR_0.01.nii.gz');
topic11 = MRIread('v4-topics-50_11_motion_visual_perception_pFgA_z_FDR_0.01.nii.gz');
topic17 = MRIread('v4-topics-50_17_social_participants_empathy_pFgA_z_FDR_0.01.nii.gz');
topic19 = MRIread('v4-topics-50_19_stimulus_responses_response_pFgA_z_FDR_0.01.nii.gz');
topic20 = MRIread('v4-topics-50_20_reading_language_words_pFgA_z_FDR_0.01.nii.gz');
topic22 = MRIread('v4-topics-50_22_memory_working_wm_pFgA_z_FDR_0.01.nii.gz');
topic23 = MRIread('v4-topics-50_23_emotional_faces_facial_pFgA_z_FDR_0.01.nii.gz');
topic29 = MRIread('v4-topics-50_29_reward_decision_risk_pFgA_z_FDR_0.01.nii.gz');
topic35 = MRIread('v4-topics-50_35_stimulation_somatosensory_tms_pFgA_z_FDR_0.01.nii.gz');
topic36 = MRIread('v4-topics-50_36_sentences_comprehension_language_pFgA_z_FDR_0.01.nii.gz');
topic40 = MRIread('v4-topics-50_40_emotional_negative_emotion_pFgA_z_FDR_0.01.nii.gz');
topic8 = MRIread('v4-topics-50_8_inhibition_response_inhibitory_pFgA_z_FDR_0.01.nii.gz');
topic10 = MRIread('v4-topics-50_10_connectivity_functional_network_pFgA_z_FDR_0.01.nii.gz');
topic12 = MRIread('v4-topics-50_12_memory_retrieval_encoding_pFgA_z_FDR_0.01.nii.gz');
topic25 = MRIread('v4-topics-50_25_learning_feedback_error_pFgA_z_FDR_0.01.nii.gz');
topic33 = MRIread('v4-topics-50_33_areas_network_activation_pFgA_z_FDR_0.01.nii.gz');
topic44 = MRIread('v4-topics-50_44_semantic_words_word_pFgA_z_FDR_0.01.nii.gz');
topic7 = MRIread('v4-topics-50_7_language_hemispheric_lateralization_pFgA_z_FDR_0.01.nii.gz');
topic2 = MRIread('v4-topics-50_2_task_performance_cognitive_pFgA_z_FDR_0.01.nii.gz');
topic3 = MRIread('v4-topics-50_3_visual_auditory_sensory_pFgA_z_FDR_0.01.nii.gz');
topic41 = MRIread('v4-topics-50_41_attention_attentional_visual_pFgA_z_FDR_0.01.nii.gz');
topic49 = MRIread('v4-topics-50_49_motor_movement_movements_pFgA_z_FDR_0.01.nii.gz');
topic15 = MRIread('v4-topics-50_15_eye_spatial_gaze_pFgA_z_FDR_0.01.nii.gz');
topic47 = MRIread('v4-topics-50_47_conflict_response_trials_pFgA_z_FDR_0.01.nii.gz');
topic32 = MRIread('v4-topics-50_32_speech_auditory_sounds_pFgA_z_FDR_0.01.nii.gz');
topic42 = MRIread('v4-topics-50_42_number_numerical_arithmetic_pFgA_z_FDR_0.01.nii.gz');
topic1 = MRIread('v4-topics-50_1_object_objects_category_pFgA_z_FDR_0.01.nii.gz');

topic_list = [0;1;2;3;5;7;8;10;11;12;15;17;19;20;22;23;25;29;32;33;35;36;40;41;42;44;47;49];


for i = 1:nTopics
   
    cd ~/Downloads/
    
    abc = sprintf('%s%d','temp = topic',topic_list(i),'.vol;');
    eval(abc)
    
    for j = 1:375
        temp3 = double(parcels.vol==j);
        temp3a = sum(sum(sum(double(temp .* temp3>0))));
        temp4 = temp .* temp3;
        topic_template4(j,i) = sum(temp4(:))/temp3a;
    end
   
    sprintf('%d',i)
    
end