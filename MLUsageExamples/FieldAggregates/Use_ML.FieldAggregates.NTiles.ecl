   IMPORT ML;
   IrisPlants := ML.Tests.Deprecated.IrisPlantDS;
   OUTPUT(COUNT(IrisPlants),NAMED('c_IrisPlants'));
   OUTPUT(IrisPlants,NAMED('IrisPlants'));
   ML.ToField(IrisPlants,NumericField_IrisPlants);
   IrisPlantNTiles:=ML.FieldAggregates(NumericField_IrisPlants).Ntiles(4);
   OUTPUT(COUNT(IrisPlantNTiles),NAMED('c_IrisPlantNTiles'));
   OUTPUT(IrisPlantNTiles,NAMED('IrisPlantNTiles'));