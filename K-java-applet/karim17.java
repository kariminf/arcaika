/*
 made by ARIES Abd elkarim 10/03/2012 11:27
 */

import java.awt.Graphics;
import java.awt.Color;
public class karim17 extends java.applet.Applet {
    public void paint(Graphics k_graph) {

      int w,d=8,r=30,z=15;
      int i,j,f;
      double ar,rr,a;
      Color[] mycolors = {
      	new Color(255,0,0),
      	new Color(0,255,0),
      	new Color(0,0,255)
      };
      double x[]={0,0,0,0},y[]={0,0,0,0};
      w= getSize().width;
      i=w-1;
      /* les entours*/
      k_graph.drawLine(0, 0, 0, i);
      k_graph.drawLine(0, 0, i, 0);
      k_graph.drawLine(0, i, i, i);
      k_graph.drawLine(i, 0, i, i);
      /*******************************/
      w= w/2;
      //********************************************
      ar=6.283185307/d;
   rr=w;
   for(f=1;f<=d;f++)
   {
   x[0]=w;
   y[0]=w;
   a=(f-1)*ar;
   x[1]=Math.cos(a)*rr+w;
   y[1]=Math.sin(a)*rr+w;
   a=f*ar;
   x[2]=Math.cos(a)*rr+w;
   y[2]=Math.sin(a)*rr+w;
   x[3]=x[0];
   y[3]=y[0];
   for(j=1;j<=r;j++)
   {
      for(i=0;i<3;i++)
      {
      	if (f%2==1){
      		k_graph.setColor(mycolors[i]);
      	}
      	else
      		k_graph.setColor(mycolors[2-i]);
      		
       k_graph.drawLine((int)x[i],(int)y[i],(int)x[i+1],(int)y[i+1]);
      }
      if(f%2==1)
      {
	for(i=3;i>0;i--)
	{
	x[i]+=(x[i-1]-x[i])/z;
	y[i]+=(y[i-1]-y[i])/z;
	}
      x[0]=x[3];
      y[0]=y[3];
      }
   else
   {
   for(i=0;i<3;i++)
   {
   x[i]+=(x[i+1]-x[i])/z;
   y[i]+=(y[i+1]-y[i])/z;
   }
   x[3]=x[0];
   y[3]=y[0];
   }//end if else
   }//end for j
   }
      //********************************************

    }
  public String getAppletInfo() {
    return "il dessine une fleur.";
  }
}
