/*
 made by ARIES Abd elkarim 11/09/2008 07:10:19
 */

import java.awt.Graphics;
import java.awt.Color;
public class karim15 extends java.applet.Applet {
    public void paint(Graphics k_graph) {

      int w,d=15,k=20;
      int i,j,a,n=6;
      double p,rr,z;
      double x[]={0,0,0,0,0,0,0},y[]={0,0,0,0,0,0,0};
      w= getSize().width;
      a=w-1;
      /* les entours*/
      k_graph.drawLine(0, 0, 0, a);
      k_graph.drawLine(0, 0, a, 0);
      k_graph.drawLine(0, a, a, a);
      k_graph.drawLine(a, 0, a, a);
      /*******************************/
      w= w/2;
      rr=w;
      p=360/n;
      a=0;i=0;
      z=3.14159265/180;
      //k_graph.setColor(new Color(200,0,180));
      k_graph.setColor(Color.blue);
   while (i<n)
   {
   x[i]=w+rr*Math.cos(a*z);
   y[i]=w+rr*Math.sin(a*z);
   i++;
   a+=p;
   }
   x[n]=x[0];
   y[n]=y[0];
   for(i=1;i<=k;i++)
   {
   for(j=0;j<n;j++)
   {
   k_graph.drawLine((int)x[j],(int)y[j],(int)x[j+1],(int)y[j+1]);
   }
   for(j=0;j<n;j++)
   {
   x[j]=x[j]+(x[j+1]-x[j])/d;
   y[j]=y[j]+(y[j+1]-y[j])/d;
   }
   x[n]=x[0];
   y[n]=y[0];
   }

    }
  public String getAppletInfo() {
    return "il dessine une fleur.";
  }
}
