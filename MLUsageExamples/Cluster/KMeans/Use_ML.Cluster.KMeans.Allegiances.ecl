  IMPORT ML,ML.Tests.Explanatory;
  D:=ML.Tests.Explanatory.ClusterDS;
  ML.ToField(D,dEntities);
  dCentroidMatrix:=DATASET([
  {1,2,2},
  {2,3,3},
  {3,4,4},
  {4,5,5}
  ],RECORDOF(D));
  ML.ToField(dCentroidMatrix,dCentroids);
  //Note. Allegiances' OUTPUT has been sorted first by y then by x. So the
  // reader can easily see what entities are in each cluster.
  OUTPUT(SORT(ML.Cluster.KMeans(dEntities,dCentroids,30,0.3).Allegiances(),y,x));
