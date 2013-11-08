   IMPORT * FROM ML;
   A := DATASET([
                 {1,2,2},{1,3,3},
                 {2,1,4},{2,2,5},{2,3,6},
                 {3,1,7},{3,2,8},{3,3,9}
                ], ML.Types.DiscreteField);
   OUTPUT(A,NAMED('A'));

   B := ML.Utils.RebaseDiscrete(A,4);
   OUTPUT(B,NAMED('B'));
