{La barre de window}
{================================}
procedure barre_window2;
Begin
   setfillstyle(1,7);
   bar(0,20,getmaxx,getmaxy);
   setfillstyle(1,1);
   bar(0,10,getmaxx,30);
   bar(0,5,35,35);
   setfillstyle(1,0);
   setcolor(0);
   fillellipse(35,5,5,5);
   setfillstyle(1,7);
   setcolor(7);
   fillellipse(35,35,5,5);
   setfillstyle(1,1);
   setcolor(1);
   fillellipse(getmaxx-20,20,20,20);
   fillellipse(getmaxx-50,20,15,15);
end;
