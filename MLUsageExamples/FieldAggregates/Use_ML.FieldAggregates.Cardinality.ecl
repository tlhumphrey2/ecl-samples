   IMPORT ML;
   Iris := ML.Tests.Deprecated.IrisPlantDS;
   ML.ToField(Iris,NF_Iris);
   OUTPUT(ML.FieldAggregates(NF_Iris).Cardinality);
   /*
  NF_Iris Cardinality   
  number   cardinality  
       1             3  
       2            35  
       3            23  
       4            43  
       5            22  
   */
