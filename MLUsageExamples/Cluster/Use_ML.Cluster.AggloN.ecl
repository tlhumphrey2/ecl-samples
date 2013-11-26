  IMPORT ML;
  D:=ML.Tests.Explanatory.ClusterDS;
  ML.ToField(D,dEntities);
  OUTPUT(ML.Cluster.AggloN(dEntities,4));