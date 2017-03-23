/*
 made by ARIES Abd elkarim 11/09/2008 07:10:19
 */

import java.awt.Graphics;

public class karim3 extends java.applet.Applet {
    double k_function(double x) {
	return (1/Math.sin(5*x));
    }

    public void paint(Graphics k_graph) {

      int x0,y0,x1,y1,r,w;
      double i,l,p,pi=3.141592654;
      w= getSize().width;
      r=w-1;
      /* les entours*/
      k_graph.drawLine(0, 0, 0, r);
      k_graph.drawLine(0, 0, r, 0);
      k_graph.drawLine(0, r, r, r);
      k_graph.drawLine(r, 0, r, r);
      /*******************************/
      w= w/2;
      r=100;
      x0=(int)(w+(k_function(0)*Math.cos(0)*r));
      y0=(int)(w+(k_function(0)*Math.sin(0)*r));
      p=0.03;
      l=pi + 0.9*p;
      i=p;
      while (i<=l)
      {
      x1=w+(int)(k_function(i)*Math.cos(i)*r);
      y1=w+(int)(k_function(i)*Math.sin(i)*r);
      k_graph.drawLine(x0, y0, x1, y1);
      x0=x1;
      y0=y1;
      i=i+p;
      }

    }
  public String getAppletInfo() {
    return "il dessine une fleur.";
  }
}
