/*
 made by ARIES Abd elkarim 11/09/2008 07:10:19
 */

import java.awt.Graphics;

public class karim6 extends java.applet.Applet {
    double k_function(double x) {
	return Math.cos(7*x)+3;
    }

    public void paint(Graphics k_graph) {

      int x,y,r,w;
      double i,a,b,p,pi=3.141592654;
      w= getSize().width;
      r=w-1;
      /* les entours*/
      k_graph.drawLine(0, 0, 0, r);
      k_graph.drawLine(0, 0, r, 0);
      k_graph.drawLine(0, r, r, r);
      k_graph.drawLine(r, 0, r, r);
      /*******************************/
      w= w/2;
      r=5*w/18;
      b=2*pi;
      p=0.03;
      a=b+0.1*p;
      i=0;
      while (i<=a)
      {
      x=w+(int)(k_function(i)*Math.cos(i)*r);
      y=w+(int)(k_function(i)*Math.sin(i)*r);
      k_graph.drawLine(w, w, x, y);
      i=i+p;
      }

    }
  public String getAppletInfo() {
    return "il dessine une fleur.";
  }
}
