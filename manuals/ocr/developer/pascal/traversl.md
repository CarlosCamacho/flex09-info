# TRAVERSL

> Source: `dev/pascal/PASCAL - Pascal Language - Program and Support Utilities.zip!PASCAL.DSK!TRAVERSL.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

{ This program has been provided on disk for your convenience }

{ We thank Springer-Verlag Publishers for granting us permission
      to use the examples from their book 'Pascal User Manual and
      Report' by Jensen and Wirth }

{program 11.5 - page 77}

type
  ptr = ^node;
  node = record info : char;
           llink, rlink : ptr
         end;

var
  root : ptr;
  ch : char;

procedure preorder(p : ptr);
begin
  if p<>nil then
  begin
    write(p^.info);
    preorder(p^.llink);
    preorder(p^.rlink)
  end
end;  {preorder}

procedure inorder(p : ptr);
begin
  if p<> nil then
  begin
    inorder(p^.llink);
    write(p^.info);
    inorder(p^.rlink)
  end
end;  {inorder}

procedure postorder(p : ptr);
begin
  if p<>nil then
  begin
    postorder(p^.llink);
    postorder(p^.rlink);
    write(p^.info)
  end
end;  {postorder}

procedure enter(var p: ptr);
begin
  read(ch);
  write(ch);
  if ch<>'.' then
  begin
    new(p);
    p^.info := ch;
    enter(p^.llink);
    enter(p^.rlink);
  end
  else p := nil
end;  {enter}

begin
  write(' ');  enter(root);     writeln;
  write(' ');  preorder(root);  writeln;
  write(' ');  inorder(root);   writeln;
  write(' ');  postorder(root); writeln
end.
