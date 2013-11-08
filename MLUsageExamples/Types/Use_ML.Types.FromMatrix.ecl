 IMPORT ML;
 //example 1
 ChickWeightRec := RECORD
   UNSIGNED rid;
   UNSIGNED weight;
   UNSIGNED Time;
   UNSIGNED Chick;
   UNSIGNED Diet;
 END;

 ChickWeights := 
    DATASET([
             {1,42,0,1,1},
             {2,51,2,1,2},
             {3,59,4,2,1},
             {4,64,6,2,2},
             {5,76,8,3,1}
            ],ChickWeightRec);
 OUTPUT(ChickWeights,NAMED('ChickWeights'));

 // Convert ChickWeights from ChickWeightRec to record := layout := ML.Types.NumericField
 ML.ToField(ChickWeights,NumericFieldChickWeight)
 OUTPUT(NumericFieldChickWeight,NAMED('NumericFieldChickWeight'),all);

 // Convert ChickWeights from to := ML := ML.Types.NumericField.Mat.Types.Element record layout
 MatrixChickWeight := ML.Types.ToMatrix(NumericFieldChickWeight);
 OUTPUT(MatrixChickWeight,NAMED('MatrixChickWeight'),all);

 // Convert ChickWeights from ML.Mat.Types.Element to record := layout := ML.Types.NumericField
 NumericFieldChickWeight2 := ML.Types.FromMatrix(MatrixChickWeight);
 OUTPUT(NumericFieldChickWeight2,NAMED('NumericFieldChickWeight2'),all);
