  IMPORT ML;
  stemmed:=ML.Docs.PorterStemC('included');
  OUTPUT(stemmed); // stemmed is 'includ'.
