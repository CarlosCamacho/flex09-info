# SETOP

> Source: `dev/pascal/PASCAL - Pascal Language - Program and Support Utilities.zip!PASCAL.DSK!SETOP.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

{ This program has been provided on disk for your convenience }

{ We thank Springer-Verlag Publishers for granting us permission
      to use the examples from their book 'Pascal User Manual and
      Report' by Jensen and Wirth }

{program 8.1 - page 51}

type
  days = (m,t,w,th,fr,sa,su);
  week = set of days;
var
  wk, work, free : week;
  d : days;

procedure check (s : week);
  var d : days;
begin
  write(' ');
  for d := m to su do
    if d in s then write('x') else write('o');
  writeln
end; {check}

begin
  work := [];  free := [];
  wk := [m..su];
  d := sa;  free := [d] + free + [su];
  check(free);
  work := wk - free;  check(work);
  if free <= wk then write(' o');
  if wk >= work then write('k');
  if not (work >= free) then write(' jack');
  if [sa] <= work then write('forget it');
  writeln
end.
