# PRIMES

> Source: `dev/dynasoft-pascal/DYNASOFT - Dynasoft Pascal - Program and Support Utilities.zip!DYNASOFT.DSK!PRIMES.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

program fastprimes;
(* find the first 1229 primes *)
const n=1229; n1=35; (* sqrt of n *)
var i,k,x,inc,lim,square,lin: integer;
	prim: boolean;
	p,v: array[0..n] of integer;
begin
	write(2,3); lin:=2;
	x:=1; inc:=4; lim:=1; square:=9;
	for i:=3 to n do
	begin (* find next prime *)
	repeat x:=x+inc; inc:=6-inc;
	if square<=x then
	begin lim:=lim+1;

v[lim]:=square; square:=p[lim+1]*p[lim+1]
	end;
	k:=2; prim:=true;
	while prim and (k<lim) do
	begin k:=k+1;
	if v[k]<x then v[k]:=v[k]+2*p[k];
	prim:=x<>v[k]
	end
	until prim;
	if i<=n1 then p[i]:=x;
	write(x); lin:=lin+1;
	if lin=10 then
	begin writeln; lin:=0
	end
	end;
	writeln
end.
