uses crt,graph;
procedure ini_g;
 var
  Gd, Gm: Integer;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, '');
  if GraphResult <> grOk then
    Halt(1);
end;
var
x,y,i:integer;
src:string[65];
{struct palettetype pal;}
begin
ini_g;
x:=getmaxx;
y:=getmaxy;
(*getpalette(&pal);

for (i=0; i<pal.size; i++)
   setrgbpalette(pal.colors[i], i*2, 0, i*5);
*)
setfillstyle(1,1);
bar(0,0,x,y);
setfillstyle(1,5);
bar(35,35,x-35,y-35);
(*****************************
_getdcwd(0, src, sizeof(src));
strcat(src,"\\2.bmp");
displaytransparent(0,0,15,src);

_getdcwd(0, src, sizeof(src));
strcat(src,"\\0.bmp");
displaytransparent(50,80,15,src);
displaytransparent(490,80,15,src);

_getdcwd(0, src, sizeof(src));
strcat(src,"\\1.bmp");
displaytransparent(370,330,1,src);

_getdcwd(0, src, sizeof(src));
strcat(src,"\\3.bmp");
displaytransparent(100,180,15,src);

//******************************)
outtextxy(120,50,'R‚publique alg‚rienne d‚mocratique et populaire');
outtextxy(40,65,'M‚nistŠre de l''enseignement superieur et de la recherche scientifique');
outtextxy(240,80,'Universit‚ de Jijel');
outtextxy(205,95,'D‚partement d''informatique');
outtextxy(190,110,'4iŠme ann‚e g‚nie informatique');
outtextxy(450,350,'ARIES Abd elkarim');
outtextxy(450,370,'Groupe Nø 02');
outtextxy(450,390,'Nø 14');
outtextxy(50,350,'KERADA RAMDANE Widad');
settextstyle(6,0,2);
outtextxy(400,300,'Cr‚er par :');
outtextxy(50,300,'Responsable du module :');

settextstyle(10,0,4);
setcolor(14);
outtextxy(175,110,'Compilation');

settextstyle(7,0,3);
setcolor(12);
outtextxy(210,225,'Les grammaires');
readkey;
closegraph;
end.