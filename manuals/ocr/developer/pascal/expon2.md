# EXPON2

> Source: `dev/pascal/PASCAL - Pascal Language - Program and Support Utilities.zip!PASCAL.DSK!EXPON2.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

{ This program has been provided on disk for your convenience }

{ We thank Springer-Verlag Publishers for granting us permission
      to use the examples from their book 'Pascal User Manual and
      Report' by Jensen and Wirth }

{program 11.8 - page 81}

var
  pi, spi: real;

function power(x:real; y:integer): real; {y>=0}
  var  z: real;
       y1: integer;
       x1: real;
begin
  x1 := x;  y1 := y;
  z := 1.0;
  while y1 > 0 do
  begin
    while not odd(y1) do
    begin y1 := y1 div 2;  x1 := sqr(x1)
    end;
    y1 := y1-1;  z := x1*z
  end;
  power := z
end;  {power}

begin
  pi := 3.14159;
  writeln(2.0,7,power(2.0,7));
  spi := power(pi,2);
  writeln(pi,2,spi);
  writeln(spi,2,power(spi,2));
  writeln(pi,4,power(pi,4))
end.
