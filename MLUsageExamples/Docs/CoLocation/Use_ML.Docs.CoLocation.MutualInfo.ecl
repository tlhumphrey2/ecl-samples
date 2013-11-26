  IMPORT ML;
  IMPORT ML.Docs;

  InClassSentences:=DATASET([
      {1,'David went to the market and bought milk and bread'},
      {2,'John picked up butter on his way home from work.'},
      {3,'Jill craved lemon cookies, so she grabbed some at the convenience store'},
      {4,'Mary needs milk, bread and butter to make breakfast tomorrow morning.'},
      {5,'William\'s lunch included a sandwich on wheat bread and chocolate chip cookies.'}
  ],ML.Docs.Types.Raw);
  OUTPUT(InClassSentences,NAMED('InClassSentences'));

  OutOfClassSentences:=DATASET([
      {1,'Mary said the stock market fluctuates alot.'},
      {2,'When buying stocks, buy low and sell high'},
      {3,'The grass is always greener on the other side'},
      {4,'Mr. Gorbachev, tear down this wall!'},
       {5,'If it doesn\'t fit, you must acquit'}
  ],ML.Docs.Types.Raw);
  OUTPUT(OutOfClassSentences,NAMED('OutOfClassSentences'));

  mi := ML.Docs.CoLocation.MutualInfo(InClassSentences,OutOfClassSentences,2);
  OUTPUT(sort(mi,-mi),NAMED('mi'));