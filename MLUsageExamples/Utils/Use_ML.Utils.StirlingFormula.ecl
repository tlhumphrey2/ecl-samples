  IMPORT ML;

   /*
     This example shows how the error precentage of the difference between the factorial and
     stirling's approximation changes as n gets larger.
   */

   compare_fac_stirling_rec := RECORD
      UNSIGNED n;
      REAL8 fac:=0;
      REAL8 apprx_fac:=0;
      REAL8 diff:=0;
      STRING ErrorPercent:='';
   END;

   compare_fac_stirlingDS :=
      DATASET([
               {2,0,0,0,''}
               ,{4,0,0,0,''}
               ,{8,0,0,0,''}
               ,{16,0,0,0,''}
               ,{32,0,0,0,''}
               ,{64,0,0,0,''}
               ,{128,0,0,0,''}
               ], compare_fac_stirling_rec);

   compare_fac_stirling_rec calc( compare_fac_stirling_rec r ) :=
     TRANSFORM
        Fac := ML.Utils.fac(r.n);
        ApprxFac := ML.Utils.stirlingFormula(r.n);
        diff:=abs(Fac-ApprxFac);
        ErrorPercent:=REALFORMAT(100*(1-(diff/Fac)),6,2);
        SELF.n := r.n;
        SELF.fac := Fac;
        SELF.apprx_fac := ApprxFac;
        SELF.diff := diff;
        SELF.ErrorPercent := ErrorPercent;
     END;

   MyLoop := LOOP(compare_fac_stirlingDS,7,PROJECT(ROWS(LEFT),calc(LEFT)));

   OUTPUT(MyLoop);