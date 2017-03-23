/*
 made by ARIES Abd elkarim 11/09/2008 07:10:19
 */

import java.awt.Graphics;

public class karim9 extends java.applet.Applet {
  void dragon (int x1,int y1,int x2,int y2,int p,Graphics k_gr)
    {int c1,c2;
    //Graphics k_gr;
    if (p==0) {k_gr.drawLine(x1, y1, x2, y2);}
    else
    {
    c1=x1+(x2-x1)/2-(y2-y1)/2;
    c2=y1+(y2-y1)/2+(x2-x1)/2;
    dragon(c1,c2,x1,y1,p-1,k_gr);
    dragon(c1,c2,x2,y2,p-1,k_gr);
    }
    }

    public void paint(Graphics k_graph) {

      int x0,y0;
      x0= getSize().width;
      y0= getSize().height;
      /* les entours*/
      k_graph.drawLine(0, 0, 0, y0-1);
      k_graph.drawLine(0, 0, x0-1, 0);
      k_graph.drawLine(0, y0-1, x0-1, y0-1);
      k_graph.drawLine(x0-1, 0, x0-1, y0-1);
      /*******************************/
      y0=(int)(y0/3);
      x0=(int)5*x0/8;
      dragon(50,y0,x0,y0,14,k_graph);

    }   
   public String getAppletInfo() {
    return "il dessine une fleur.";
  }
}
