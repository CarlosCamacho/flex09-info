# RUNTEST

> Source: `dev/pascal/PASCAL - Pascal Language - Program and Support Utilities.zip!PASCAL.DSK!RUNTEST.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

{**                                                               **}
{**  Pascal programming example using the 'RUN' mechanism with an **}
{**  assembly language routine.  This program calls an assembly   **}
{**  language routine with a textual parameter which is printed   **}
{**  on the terminal.  The routine then returns the date in the   **}
{**  parameters [2..4] in the form Month/Day/Year.                **}
{**                                                               **}

type
  month = array [1..4] of char;

var
  months: array [1..12] of month;
  parms: ARGLIST;      {Used to pass information and arguments to program}
  line_no: integer;    {Returns last line number executed in called program}
  reason: PROGRESULT;  {Returns the reason program terminated}

begin
  months[1]  := 'Jan';  months[2]  := 'Feb';  months[3]  := 'Mar';
  months[4]  := 'Apr';  months[5]  := 'May';  months[6]  := 'Jun';
  months[7]  := 'Jul';  months[8]  := 'Aug';  months[9]  := 'Sep';
  months[10] := 'Oct';  months[11] := 'Nov';  months[12] := 'Dec';
  parms[1].ID := 'Get Date       ';
  RUN('GETDATE.CMD    ', parms, line_no, reason);
  if reason = TERMINATED then
  begin {** Program terminated normally **}
    writeln('The current date is ', months[parms[2].INT], parms[3].INT:4,
            ', 19', parms[4].INT:1);
  end else
  begin {** Program terminated abnormally **}
    write('**** Program abnormal termination on line ', line_no:1,
          'because of ');
    case reason of
      OVERFLOW:     writeln('numeric overflow');
      POINTERERROR: writeln('invalid pointer');
      RANGEERROR:   writeln('value out of range');
      HEAPLIMIT:    writeln('data space overflow');
      STACKLIMIT:   writeln('stack space overflow');
      TERMINATED,
      VARIANTERROR: {** Not possible under this version **}
    end;
  end;
end.
