/*
 made by ARIES Abd elkarim 11/09/2008 07:10:19
 */

import java.awt.Graphics;

public class karim8 extends java.applet.Applet {
    double k_function(double x) {
	return 5*Math.cos(2*x)/3-Math.cos(x);
    }

    public void paint(Graphics k_graph) {

      int x,y,r,x0,y0;
      double i,a,b,p,pi=3.141592654;
      x0= getSize().width;
      y0= getSize().height;
      /* les entours*/
      k_graph.drawLine(0, 0, 0, y0-1);
      k_graph.drawLine(0, 0, x0-1, 0);
      k_graph.drawLine(0, y0-1, x0-1, y0-1);
      k_graph.drawLine(x0-1, 0, x0-1, y0-1);
      /*******************************/
      x0=x0/2;
      y0=y0/2;
      r=x0/3;
      b=2*pi;
      p=0.03;
      a=b+0.1*p;
      i=0;
      while (i<=a)
      {
      x=x0+(int)(k_function(i)*Math.cos(i)*r);
      y=y0+(int)(k_function(i)*Math.sin(i)*r);
      k_graph.drawLine(x0, y0, x, y);
      i=i+p;
      }
      
      i=0;
      while (i<=a)
      {
      x=x0-(int)(k_function(i)*Math.cos(i)*r);
      y=y0+(int)(k_function(i)*Math.sin(i)*r);
      k_graph.drawLine(x0, y0, x, y);
      i=i+p;
      }

    }
  public String getAppletInfo() {
    return "il dessine une fleur.";
  }
}
