unit k_fil;
interface
uses base;
function videf(f:fil):boolean;
procedure ajouter(e:element;var f:fil);
function premier(f:fil):element;
procedure retirer(var f:fil);
implementation
{**********************fonction: est_vide****************************}
function videf(f:fil):boolean;
begin
videf:=(f=nil);
end;{videf}
{*******************inserer dans une file*****************************}
procedure ajouter(e:element;var f:fil);
var f1:fil;
begin
new(f1);
f1^.c:=e;
  if f=nil then
  f1^.suiv:=nil
  else
    if f^.suiv=nil then
    begin
    f1^.suiv:=f;
    f^.suiv:=f1;
    end
    else
    begin
    f1^.suiv:=f^.suiv;
    f^.suiv:=f1;
    end;
    f:=f1;
end;{insf}
{****************le premier de la file*****************************}
function premier(f:fil):element;
begin
if f<>nil then
if f^.suiv=nil then premier:=f^.c
else premier:=f^.suiv^.c;
end;{premier}
{********** supprimer le premier********* }
procedure retirer(var f:fil);
var f1:fil;
begin
if f<>nil then
if f^.suiv=nil then
begin
f1:=f;
f:=nil;
dispose(f1);
end
else
begin
f1:=f^.suiv;
if f^.suiv^.suiv=f then f^.suiv:=nil
else f^.suiv:=f^.suiv^.suiv;
dispose(f1);
end;
end;{supf}
end.{unit k_fil}