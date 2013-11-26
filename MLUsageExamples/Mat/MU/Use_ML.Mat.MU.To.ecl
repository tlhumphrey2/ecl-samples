   IMPORT * FROM ML;
   A1 := DATASET([
                  {1,1,1.0},{1,2,1.0},{1,3,1.0},
                  {2,1,1.0}, {2,2,1.0},{2,3,1.0},
                  {3,1,1.0},{3,2,1.0}, {3,3,1.0}
                 ], ML.Mat.Types.Element);
   OUTPUT(A1,NAMED('A1'));

   A1MU := ML.Mat.MU.To(A1, 4);
   OUTPUT(A1MU,NAMED('A1MU'));