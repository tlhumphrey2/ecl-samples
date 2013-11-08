  IMPORT ML;
  IMPORT ML.Docs.Types;

  // Note. All DocIds are zero (0)
  dSentences:=DATASET([
     {0,'David went to the market and bought milk and bread'},
     {0,'John picked up butter on his way home from work.'},
     {0,'Jill craved lemon cookies, so she grabbed some at the convenience store'},
     {0,'Mary needs milk, bread and butter to make breakfast tomorrow morning.'},
     {0,'William\'s lunch included a sandwich on wheat bread and chocolate chip cookies.'}
  ],ML.Docs.Types.Raw);
  OUTPUT(dSentences,NAMED('dSentences'));

  enum_dSentences := ML.Docs.Tokenize.Enumerate(dSentences);
  OUTPUT(enum_dSentences,NAMED('enum_dSentences'));
