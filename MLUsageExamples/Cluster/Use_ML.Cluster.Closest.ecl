  IMPORT ML;
  D:=ML.Tests.Explanatory.ClusterDS;
  ML.ToField(D,dEntities);
  dCentroidMatrix:=DATASET([
  {1,2,2},
  {2,3,3},
  {3,4,4},
  {4,5,5}
  ],RECORDOF(D));
  ML.ToField(dCentroidMatrix,dCentroids);
  AllResults:=ML.Cluster.KMeans(dEntities,dCentroids,30,0.3).AllResults;
  ConvergeIteration:=ML.Cluster.KMeans(dEntities,dCentroids,30,0.3).Convergence;
  FinalCentroids:=ML.Cluster.KMeans(dEntities,dCentroids,30,0.3).Result(ConvergeIteration);
  dDistances:=ML.Cluster.Distances(dEntities,FinalCentroids);

  dClosest:=ML.Cluster.Closest(dDistances);
  OUTPUT(SORT(dClosest,y,x),NAMED('dClosest'));
