# COMPLEX

> Source: `dev/pascal/PASCAL - Pascal Language - Program and Support Utilities.zip!PASCAL.DSK!COMPLEX.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

{ This program has been provided on disk for your convenience }

{ We thank Springer-Verlag Publishers for granting us permission
      to use the examples from their book 'Pascal User Manual and
      Report' by Jensen and Wirth }

{program 7.1 - page 44}

const  fac = 4;
type  complex = record re,im: integer end;
var  x,y: complex;
     n: integer;

begin
  x.re := 2;  x.im := 7;
  y.re := 6;  y.im := 3;
  for n := 1 to 4 do
  begin
    writeln(' x =',x.re:3,x.im:3,'    y =',y.re:3,y.im:3);
    { x+y }
    writeln(' sum =',x.re+y.re:3,
                    x.im+y.im:3);
    {x*y}
    writeln(' product =',x.re*y.re - x.im*y.im:3,
                         x.re*y.im + x.im*y.re:3);
    writeln;
    x.re := x.re + fac; x.im := x.im - fac;
  end
end.
