// JavaScript Document
var i=false
function max() 
{        
           if (i==false)
           {
		    
			window.moveTo(0,0)
			window.resizeTo(800,570)
			window.focus()
            i=true
          	}
}

function res() 
{
    i=false
}

function bouton(name,source) {
document.images[name].src= source 
}

function message(num)
{
if (num==1) {window.status="C'est une zone sp&eacute;cialis&eacute;e pour les agents de saisie";}
if (num==2) {window.status="C'est une zone sp&eacute;cialis&eacute;e pour le directeur de l'hotel";}
if (num==3) {window.status="C'est une zone sp&eacute;cialis&eacute;e pour les usagers";}
if (num==4) {window.status="C'est une zone sp&eacute;cialis&eacute;e pour prendre l'aide sur ce site";}
}

