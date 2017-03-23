/*
 made by ARIES Abd elkarim 11/09/2008 07:10:19
 */

import java.awt.Graphics;

public class karim13 extends java.applet.Applet {
    double k_function(int x) {
	return (x* 3.14159/180);
    }

    public void paint(Graphics k_graph) {

      int w,r,d,i,x1,y1,x2,y2,p;
      double ar;
      w= getSize().width;
      r=w-1;
      /* les entours*/
      k_graph.drawLine(0, 0, 0, r);
      k_graph.drawLine(0, 0, r, 0);
      k_graph.drawLine(0, r, r, r);
      k_graph.drawLine(r, 0, r, r);
      /*******************************/
      w= w/2;
      r=w;
      /* il suffet de modifier d*/
      d=5;
      i=0;
      p=3;
      while (i<=360)
      {
      ar=k_function(i);
      x1=w+((int)(Math.cos(ar)*r));
      y1=w+((int)(Math.sin(ar)*r));
      x2=w+((int)(Math.cos(d*ar)*r));
      y2=w+((int)(Math.sin(d*ar)*r));
      k_graph.drawLine(x1, y1, x2, y2);
      i=i+p;
      }

    }
  public String getAppletInfo() {
    return "il dessine une fleur.";
  }
}
