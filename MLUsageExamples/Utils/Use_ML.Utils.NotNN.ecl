  IMPORT ML;
  s2:='There are three spaces ';
     // Last space is on the very end.
  x2:=ML.Utils.NotNN(s2,2);
  OUTPUT(x2);
  s3:='There are four spaces here';
     // Last space is just before 'here'.
  x3:=ML.Utils.NotNN(s3,6);
  OUTPUT(x3);	
