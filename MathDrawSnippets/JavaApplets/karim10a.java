/*
 made by ARIES Abd elkarim 11/09/2008 17:52:12
 */
 /* la feuille est un fractal créé par ARIES Abd elkarim 2006*/

import java.awt.Graphics;

public class karim10a extends java.applet.Applet {

    void feuille (int xa,int ya,int xb,int yb,int p,Graphics k_gr)
    {int xd,xk1,xk2,yd,yk1,yk2;
    if (p ==0)
    {
      k_gr.drawLine(xa, ya, xb, yb);
    }
    else
    {
    
    xd=xa+(xb-xa)/4;
    yd=ya+(yb-ya)/4;
    xk1=xa+(xb-xa)/2-(yb-yd)/4;
    yk1=ya+(yb-ya)/2+(xb-xd)/4;
    xk2=xa+(xb-xa)/2+(yb-yd)/4;
    yk2=ya+(yb-ya)/2-(xb-xd)/4;
    feuille(xd,yd,xk1,yk1,p-1,k_gr);
    feuille(xd,yd,xk2,yk2,p-1,k_gr);
    feuille(xd,yd,xb,yb,p-1,k_gr);
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
      feuille(20,y0,x0,y0,14,k_graph);

    }   
    
   public String getAppletInfo() {
    return "il dessine une fleur.";
  }
}
