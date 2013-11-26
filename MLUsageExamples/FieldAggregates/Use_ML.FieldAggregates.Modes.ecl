   IMPORT ML;
   Iris := ML.Tests.Deprecated.IrisPlantDS;
   ML.ToField(Iris,NF_Iris);
   OUTPUT(ML.FieldAggregates(NF_Iris).modes);
      /*
     NF_Iris Modes
  number   mode   cnt
       1    1.0    50
       1    2.0    50
       1    3.0    50
       2    5.0    10
       3    3.0    26
       4    1.5    14
       5    0.2    28
   */