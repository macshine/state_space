# state_space

Code repository for the manuscript, "Human cognition involves the dynamic integration of neural activity and neuromodulatory systems" by Shine, J.M. et al. in Nature Neuroscience (2019).

The study involves conducting a spatial principal component analysis (PCA) on multi-task data from the Human Connectome Project (HCP; http://www.humanconnectomeproject.org/) and then tracking the trajectories (i.e., eigenvalues or time series of PCs [tPCs]) of the eigenvectors over time to interrogate the low-dimensional signature of cognitive function in the human brain.

A brief overview of the analysis plan:
1. Concatenate parcel-wise data from 100 subjects across 7 tasks
2. Run 'pca.m' on the concatenated data in MATLAB
  a) top 5 eigenvectors ('eigenvec.m') and eigenvalues ('eigenval.m') are stored in the repository, along with the XYZ coordinates and network assignment of each of the cortical parcels (n = 333);
  b) collapse the data according to the phase of the first tPC in order to estimate the low-dimensional manifold ('make_manifold.m');
3. Plot the eigenvalues of the eigenvectors and compare these to:
  a) the combined task regressor;
  b) neurosynth Topic Maps ('topic_maps.m'; http://neurosynth.org/analyses/topics/; https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5683652/);
  c) time-varying network topology (github.com/macshine/integration; https://www.ncbi.nlm.nih.gov/pubmed/27693256)
  d) neuromodulatory receptor maps (http://neurosynth.org/genes/).
4. Compare the results to block-resampled null data ('block_resampling.m'); 
5. Calculate network controllability measures (https://www.danisbassett.com/resources.html) and compare to top eigenvectors.

Please contact mac.shine@sydney.edu.au if you have any further questions.
