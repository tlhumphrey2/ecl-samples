   IMPORT ML;
   IrisPlants := ML.Tests.Deprecated.IrisPlantDS;
   OUTPUT(COUNT(IrisPlants),NAMED('c_IrisPlants'));
   OUTPUT(IrisPlants,NAMED('IrisPlants'));
   ML.ToField(IrisPlants,NumericField_IrisPlants);
   IrisPlantBuckets:=ML.FieldAggregates(NumericField_IrisPlants).Buckets(4);
   OUTPUT(COUNT(IrisPlantBuckets),NAMED('c_IrisPlantBuckets'));
   OUTPUT(IrisPlantBuckets,NAMED('IrisPlantBuckets'));