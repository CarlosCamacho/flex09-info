# COSINE

> Source: `dev/pascal/PASCAL - Pascal Language - Program and Support Utilities.zip!PASCAL.DSK!COSINE.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

{ This program has been provided on disk for your convenience }

{ We thank Springer-Verlag Publishers for granting us permission
      to use the examples from their book 'Pascal User Manual and
      Report' by Jensen and Wirth }

{program 4.5 - page 24}

const
   eps = 1e-14;

var
   x,sx,s,t : real;
   i,k,n    : integer;
   abt : real;
   abss : real;

begin
   read(n);
   for i := 1 to n do
   begin
      read(x);
      t := 1.0;
      k := 0;
      s := 1.0;
      sx := sqr(x);
      while abs(t) > eps*abs(s) do
      begin
         k := k+2;
         t := -t * sx/conv(k * (k-1));
         s := s + t;
      end;
      writeln(x,s, k div 2)
   end
end.
