# GRAPH2

> Source: `dev/pascal/PASCAL - Pascal Language - Program and Support Utilities.zip!PASCAL.DSK!GRAPH2.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

{ This program has been provided on disk for your convenience }

{ We thank Springer-Verlag Publishers for granting us permission
      to use the examples from their book 'Pascal User Manual and
      Report' by Jensen and Wirth }

{Program 6.2 - page 38}

const
  d=0.0625;   {1/16, 16 lines per interval}
  s=32.0;     {character width for interval}
  h1=34;      {character position of x axis}
  h2=68;      {line width}
  c=6.28138;  {2*pi}
  lim=32;
var
  x,y: real;
  i,j,k,n: integer;
  a: array[1 .. h2] of char;
begin
  for j := 1 to h2 do a[j] := ' ';
  for i := 0 to lim do begin
     x:=d*conv(i);
     y:=exp(-x)*sin(c*x);
     a[h1] := ':';
     n:=round(s*y)+h1;
     a[n] := '*';
     if n<h1 then k := h1 else k := n;
     for j := 1 to k do write( a[j] );
     writeln;
     a[n] := ' '
  end
end.
