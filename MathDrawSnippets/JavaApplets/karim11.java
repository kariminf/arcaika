/*
 made by ARIES Abd elkarim 11/09/2008 17:52:12
 */
 /* la feuille est un fractal créé par ARIES Abd elkarim 2006*/

import java.awt.Graphics;

public class karim11 extends java.applet.Applet {

    void vague (int x1,int y1,int x2,int y2,int p,Graphics k_gr)
    {int c1,c2,d1,d2,m1,m2;
    if (p==0) k_gr.drawLine(x1, y1, x2, y2);
    else
    {
    m1=(x1+x2)/2;
    m2=(y1+y2)/2;
    c1=x1+(m1-x1)/2-(m2-y1)/2;
    c2=y1+(m2-y1)/2+(m1-x1)/2;
    d1=m1+(x2-m1)/2+(y2-m2)/2;
    d2=m2+(y2-m2)/2-(x2-m1)/2;
    vague(x1,y1,c1,c2,p-1,k_gr);
    vague(c1,c2,d1,d2,p-1,k_gr);
    vague(d1,d2,x2,y2,p-1,k_gr);
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
      y0=(int)(y0/2);
      x0=x0-20;
       vague(20,y0,x0,y0,10,k_graph);

    }

   public String getAppletInfo() {
    return "il dessine une fleur.";
  }
}
