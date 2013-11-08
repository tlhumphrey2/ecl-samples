
IMPORT ML;
Chicks := ML.Tests.Deprecated.ChickWeight;
ML.ToField(Chicks,NumericField_Chicks);
SimpleRankedChickWeight2NumericFieldDS := ML.FieldAggregates(NumericField_Chicks).SimpleRanked;
OUTPUT(SimpleRankedChickWeight2NumericFieldDS,NAMED('SimpleRankedChickWeight2NumericFieldDS'));
