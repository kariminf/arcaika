var ce_jour=new Date().getDay()+0;
var cette_mois=new Date().getMonth()+0;

function laDate(le_jour,le_mois,la_annee)
{
var ann=parseInt(la_annee.value)%4;
var jj=parseInt(le_jour.selectedIndex)+1;
if (le_mois.selectedIndex==1)
{
 
if ((ann==0)&&(jj>29))
{
le_jour.selectedIndex=28;
}
else
{
if ((ann!=0)&&(jj>28))
{
le_jour.selectedIndex=27;
}
}
}


}


////////////////////////////////////////////
function laDate2()
{//0

if (parseInt(form1.a1.value)>parseInt(form1.a2.value))
{//1
form1.a1.selectedIndex=form1.a2.selectedIndex;
}//1

if (parseInt(form1.a1.value)==parseInt(form1.a2.value))
{//2

if (form1.mm1.selectedIndex > form1.mm2.selectedIndex)
{//3
form1.mm1.selectedIndex=form1.mm2.selectedIndex;
}//3

if (form1.mm1.selectedIndex == form1.mm2.selectedIndex)
{//4
if (form1.j1.selectedIndex > form1.j2.selectedIndex)
{//5
form1.j1.selectedIndex=form1.j2.selectedIndex;
}//5
}//4


}//2


}//0


//////////////////////////////////////////
function laDate3(le_jour,le_mois,la_annee)
{

if (la_annee.selectedIndex==0)
{

if (le_mois.selectedIndex<cette_mois)
{
le_mois.selectedIndex=cette_mois;
}

if (le_mois.selectedIndex==cette_mois)
{

if (le_jour.selectedIndex<ce_jour)
{
le_jour.selectedIndex=ce_jour;
}

}

}



}



/////////////////////////////////////////

function la_selection(sele,inpu)
{
inpu.value=sele.value;
}

function calculer()
{
var str=0;
var dif_an=parseInt(form1.a2.options[form1.a2.selectedIndex].value)-parseInt(form1.a1.options[form1.a1.selectedIndex].value);
var m2=parseInt(form1.m2.value);
var m1=parseInt(form1.m1.value);
var j2=parseInt(form1.j2.options[form1.j2.selectedIndex].value);
var j1=parseInt(form1.j1.options[form1.j1.selectedIndex].value);
var pension=parseInt(inf.pens.options[inf.pens.selectedIndex].value);
var tot=0;

if (parseInt(inf.ch0.value)>parseInt(inf.ss.options[0].value))
{
alert ("Il n'y a que "+inf.ss.options[0].value+" chambres doubles sur mer");
}
else
{
str=parseInt(inf.ch0.value)*parseInt(inf.tarif0.value);

if (parseInt(inf.ch1.value)>parseInt(inf.ss.options[1].value))
{
alert ("Il n'y a que "+inf.ss.options[1].value+" chambres singles sur mer");
}
else
{
str=str+parseInt(inf.ch1.value)*parseInt(inf.tarif1.value);

if (parseInt(inf.ch2.value)>parseInt(inf.ss.options[2].value))
{
alert ("Il n'y a que "+inf.ss.options[2].value+" chambres doubles sur forêt");
}
else
{
str=str+parseInt(inf.ch2.value)*parseInt(inf.tarif2.value);

if (parseInt(inf.ch3.value)>parseInt(inf.ss.options[3].value))
{
alert ("Il n'y a que "+inf.ss.options[3].value+" chambres singles sur forêt");
}
else
{
str=str+parseInt(inf.ch3.value)*parseInt(inf.tarif3.value);
str=str+pension;
form1.resultat.value=str;


tot=((dif_an*12)+m2-m1)*30+j2-j1;
tot=tot*str;

form1.total.value=tot;

}
}
}
}
}



function affecter()
{
form1.ch0.value=document.inf.ch0.value;
form1.ch1.value=document.inf.ch1.value;
form1.ch2.value=document.inf.ch2.value;
form1.ch3.value=document.inf.ch3.value;
form1.pens.value=document.inf.pens.selectedIndex;
}



function majuscule(champ)
{
champ.value = champ.value.toUpperCase();

}


function pmajuscule(champ)
{
champ.value = champ.value.substring(0,1).toUpperCase()+champ.value.substring(1, champ.value.length).toLowerCase();

}


function status_mes(msg) 
{
	window.status = msg + ".";
}


function isNumber(inputStr) {
	for (var i = 0; i < inputStr.value.length; i++) {
		var oneChar = inputStr.value.substring(i, i + 1)
		if (oneChar < "0" || oneChar > "9") {
			alert("SVP entrez des nombres.");
			inputStr.value=inputStr.value.substring(0, inputStr.value.length-1);
		}
	}
	
}



function send_nom()
{
document.inf.form2.nom.value=document.form1.nom.value;
}


function send_prenom()
{
document.inf.form2.prenom.value=document.form1.prenom.value;
}