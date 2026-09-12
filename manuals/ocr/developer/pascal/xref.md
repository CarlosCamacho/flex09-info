# XREF

> Source: `dev/pascal/PASCAL - Pascal Language - Program and Support Utilities.zip!PASCAL.DSK!XREF.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

{ cross reference generator using hash table,
  modified from:
      Wirth, Niklaus, ALGORITHMS + DATA STRUCTURES = PROGRAMS
      (Englewood Cliffs, N.J.: Prentice-Hall, Inc., 1976). }

CONST
  c1 = 10;    { length of words }
  c2 = 10;    { numbers per line }
  c3 = 6;     { digits per number }
  c4 = 9999;  { maximum line number }
  p = 997;    { prime number }
  free = '         ';

TYPE
  index = 0..p;
  alfa = PACKED ARRAY [1..c1] of char;
  itemref = ^item;
  word = RECORD
           key: alfa;
           first, last: itemref;
           fol: index
         END;
  item = RECORD
           lno: 0..c4;
           next: itemref
         END;

VAR
  i, top: index;
  k, k1: integer;
  n: integer;    { current line number }
  id: alfa;
  f: text;
  a: alfa;
  t: ARRAY [0..p] of word;   { hash table }
  letters, letters_or_digits: set of char;
  list, aborted, end_of_comment: boolean;
  ch: char;

PROCEDURE search;
   VAR  h, d, i: index;
        indx: 1..c1;
        x: itemref;
        f: boolean;
   { global variables: t, id, top }

   BEGIN
      h := 0;
      FOR indx := 1 TO c1 DO
        h := h + ORD (id [indx]);
      h := h MOD p;
      f := false;
      d := 1;
      NEW (x);
      x^.lno := n;
      x^.next := NIL;
      REPEAT
         IF t [h].key = id THEN
            BEGIN  { found }
               f := true;
               t [h].last^.next := x;
               t [h].last := x
            END
         ELSE
            IF t [h].key = free THEN
               BEGIN  { new entry }
                  f := true;
                  WITH t [h] DO
                     BEGIN
                        key := id;
                        first := x;
                        last := x;
                        fol := top
                     END;
                  top := h
               END
            ELSE
               BEGIN { collision }
                  h := h + d;
                  d := d + 2;
                  IF h >= p THEN h := h - p;
                  IF d = p THEN
                     BEGIN
                        writeln ('TABLE OVERFLOW');
                        aborted := true  { terminate program }
                     END
               END
      UNTIL (f OR aborted)
   END { search };

PROCEDURE printword (w: word);
   VAR  l: integer;
        x: itemref;

   BEGIN
      write (' ');
      FOR l := 1 TO c1 DO
        write (w.key [l]);
      x := w.first;
      l := 0;
      REPEAT
         IF l = c2 THEN
            BEGIN
               writeln;
               l := 0;
               write (' ': c1 + 1)
            END;
         l := l + 1;
         write (x^.lno: c3);
         x := x^.next
      UNTIL x = NIL;
      writeln
   END { printword };

PROCEDURE printtable;
   VAR  i, j, m: index;

   BEGIN
      i := top;
      WHILE i <> p DO
         BEGIN { scan linked list and find minimal key }
            m := i;
            j := t [i].fol;
            WHILE j <> p DO
               BEGIN
                  IF t [j].key < t[m].key THEN m := j;
                  j := t [j].fol
               END;
            printword (t [m]);
            IF m <> i THEN
               BEGIN
                  t [m].key := t[i].key;
                  t [m].first := t[i].first;
                  t [m].last := t[i].last
               END;
            i := t [i].fol
         END
   END { printtable };

PROCEDURE writelnno;
   BEGIN
      IF list THEN
         BEGIN
            write (n: c3); { next line }
            write (' ')
         END
   END; { writelnno }

PROCEDURE writeit;
   BEGIN
      IF list THEN write (f^)
   END; { writeit }

PROCEDURE consume;
   BEGIN
      writeit;
      get (f)
   END; { consume }

BEGIN
   n := 0;
   k1 := c1;
   top := p;
   list := true;
   IF PARAM[2].ID[1] = '+' THEN
   BEGIN
     IF (PARAM[2].ID[2] = 'L') OR
        (PARAM[2].ID[2] = 'l') THEN list := false;
   END;
   reset(f, PARAM[1].ID);
   letters :=  [];
   FOR ch := 'a' TO 'z' DO
     letters := letters OR  [ch];
   FOR ch := 'A' TO 'Z' DO
     letters := letters OR  [ch];
   letters_or_digits := letters  OR  ['_'];
   FOR ch := '0' TO '9' DO
     letters_or_digits := letters_or_digits OR  [ch];
   FOR i := 0 TO p DO t [i].key := free;
   WHILE NOT eof (f) AND NOT aborted DO
      BEGIN
         IF n = c4 THEN n := 0;
         n := n + 1;
         writelnno;
         WHILE NOT eoln (f) AND NOT aborted DO
            BEGIN { scan non-empty line }
               IF f^ IN letters THEN
                  BEGIN
                     k := 0;
                     REPEAT
                        IF k < c1 THEN
                           BEGIN
                              k := k + 1;
                              a [k] := f^
                           END;
                        writeit;
                        get (f)
                     UNTIL NOT (f^ IN letters_or_digits);
                     IF k >= k1 THEN
                        k1 := k
                     ELSE
                        REPEAT
                           a [k1] := ' ';
                           k1 := k1 - 1
                        UNTIL k1 = k;
                     id := a;  { pack (a, 1, id) }
                     search
                  END
               ELSE
                  BEGIN { check for quote or comment }
                     IF f^ = '''' THEN
                        BEGIN
                           REPEAT
                              writeit;
                              get (f)
                           UNTIL f^ = '''';
                           consume
                        END
                     ELSE
                        IF f^ = '{' THEN
                           BEGIN
                              REPEAT
                                 writeit;
                                 get (f)
                              UNTIL f^ = '}';
                              consume
                           END
                        ELSE
                           IF f^ = '"' THEN
                              BEGIN
                                 REPEAT
                                    writeit;
                                    get (f)
                                 UNTIL f^ = '"';
                                 consume
                              END
                           ELSE
                              IF f^ = '(' THEN
                                  BEGIN
                                     writeit;
                                     get (f);
                                     IF f^ = '*' THEN { comment }
                                        BEGIN
                                           end_of_comment := false;
                                           WHILE NOT (end_of_comment) DO
                                              BEGIN
                                                 REPEAT
                                                    writeit;
                                                    get (f)
                                                 UNTIL f^ = '*';
                                                 writeit;
                                                 get (f);
                                                 IF f^ = ')' THEN
                                                    BEGIN
                                                       end_of_comment := true;
                                                       consume
                                                    END
                                              END { WHILE }
                                        END { IF }
                                  END { IF }
                              ELSE
                                 consume
                  END
            END;
         IF list THEN writeln;
         get (f)
      END;
    PAGE (output);
    printtable
END.
