
 IMPORT ML;
 //example 1
 Chicks := ML.Tests.Deprecated.ChickWeight;
 ML.ToField(Chicks,NumericFieldChickWeight1)

 OUTPUT(NumericFieldChickWeight1,NAMED('NumericFieldChickWeight1'),all);
     // for each record in ChickWeight (578 records), NumericFieldChickWeight1 will
     // contain one record for each numeric field totalling to 2312 output
     // records

 OUTPUT(NumericFieldChickWeight1_Map, NAMED('NumericFieldChickWeight1_Map')); 
     // returns the mapping table of field name to number

 OUTPUT(NumericFieldChickWeight1_ToName(2),NAMED('NumericFieldChickWeight1_ToName')); 
     // returns 'time'

 OUTPUT(NumericFieldChickWeight1_ToNumber('weight'),NAMED('NumericFieldChickWeight1_ToNumber')); 
     // returns 1

 IMPORT ML;
 //example 1
 Chicks := ML.Tests.Deprecated.ChickWeight;
 ML.ToField(Chicks,NumericFieldChickWeight2,,'chick,weight'); 

 OUTPUT(NumericFieldChickWeight2,NAMED('NumericFieldChickWeight1'),all); 
     // for each record in ChickWeight (578 records), NumericFieldChickWeight1 will
     // contain one record for each specified field totalling to 1156 output
     // records

 OUTPUT(NumericFieldChickWeight2_Map, NAMED('NumericFieldChickWeight1_Map')); 
     // returns the mapping table of field name to number

 OUTPUT(NumericFieldChickWeight2_ToName(2),NAMED('NumericFieldChickWeight1_ToName')); 
     // returns 'chick'

 OUTPUT(NumericFieldChickWeight2_ToNumber('weight'),NAMED('NumericFieldChickWeight1_ToNumber')); 
     // returns 1
