  IMPORT ML;
  stemmed:=ML.Docs.PorterStem('included');
  OUTPUT(stemmed); // stemmed is 'includ'.
