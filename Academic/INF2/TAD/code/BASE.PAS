unit base;
interface
type
element=char;
fil=^celule1;
     celule1=record
     c:element;
     suiv:fil;
     end;
pile=^celule2;
celule2=record
     c:element;
     v:real;
     suiv:pile;
     end;
vari=record
     c:char;
     v:real;
     end;
va=array[1..30]of vari;
va2=array[1..3]of vari;
implementation
end.