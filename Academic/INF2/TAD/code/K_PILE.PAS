unit k_pile;
interface
uses base;
function videp(p:pile):boolean;
procedure empiler(var p:pile;e:element;v:real);
procedure depiler(var p:pile);
function sommet(p:pile):element;
function fond(p:pile):real;
implementation
function videp(p:pile):boolean;
begin
videp:=(p=nil);
end;{videp}
procedure empiler(var p:pile;e:element;v:real);
var p1:pile;
begin
new(p1);
p1^.c:=e;
p1^.v:=v;
p1^.suiv:=p;
p:=p1
end;{empiler}
procedure depiler(var p:pile);
var p1:pile;
begin
if p<>nil then
begin
p1:=p;
p:=p^.suiv;
dispose(p1);
end;
end;{depiler}
function sommet(p:pile):element;
begin
if p<>nil then sommet:=p^.c;
end;{sommet}
function fond(p:pile):real;
begin
if p<>nil then fond:=p^.v;
end;
end.