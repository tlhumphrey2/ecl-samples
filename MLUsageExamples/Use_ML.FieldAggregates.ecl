   IMPORT ML;
   Chicks := ML.Tests.Deprecated.ChickWeight;
   ML.ToField(Chicks,NumericField_Chicks);
   OUTPUT(ML.FieldAggregates(NumericField_Chicks));