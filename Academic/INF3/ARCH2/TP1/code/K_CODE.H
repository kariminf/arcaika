//********************************************************************
//************ cette unite sert pour le decodage d'instruction
//************ et pour detecter les erreurs de depassement
//************ d'adresse
//********************************************************************
//********************************************************************
//*************      LA CONVERTION DU CODE MNEMONIQUE  ***************
//********************************************************************
void convert(char scode[],int *code,char *oui,int *pp)
{
int kaka;
char s[4],kk;
strncpy(s, scode, 4);
s[4]='\0';
kk='o';//pour connaitre les adresses des instructions simples ou pile
//kk='d' une adresse d'une donnee (16-31);taille segment donnee=16 mots
//kk='+' pour incrementer la valeur de pp avec push pshi
//kk='i' une adresse d'une instruction(0-15);taille segment instruction=16 mots
//kk='n' une donnee: sert avec "LOCO"
//kk='x' sert pour les instructions dont elles utilisent (x+pp) pour qu'on
//ne depasse pas l'adresse (47)la derniere adresse dans ma memoire
//kk='1' sert pour les instructions pile (popi,pop)
//ces deux instructions seront utilisees apres push ou pshi
*oui='o';//supposant que le code est valide ==> oui='o'
     if (strcmpi(s,"lodd")==0) {*code=0x0000;kk='d';}//(1
else if (strcmpi(s,"stod")==0) {*code=0x1000;kk='d';}//(2
else if (strcmpi(s,"addd")==0) {*code=0x2000;kk='d';}//(3
else if (strcmpi(s,"subd")==0) {*code=0x3000;kk='d';}//(4
else if (strcmpi(s,"jpos")==0) {*code=0x4000;kk='i';}//(5
else if (strcmpi(s,"jzer")==0) {*code=0x5000;kk='i';}//(6
else if (strcmpi(s,"jump")==0) {*code=0x6000;kk='i';}//(7
else if (strcmpi(s,"loco")==0) {*code=0x7000;kk='n';}//(8
else if (strcmpi(s,"lodl")==0) {*code=0x8000;kk='x';}//(9
else if (strcmpi(s,"stol")==0) {*code=0x9000;kk='x';}//(10
else if (strcmpi(s,"addl")==0) {*code=0xa000;kk='x';}//(11
else if (strcmpi(s,"subl")==0) {*code=0xb000;kk='x';}//(12
else if (strcmpi(s,"jneg")==0) {*code=0xc000;kk='i';}//(13
else if (strcmpi(s,"jnze")==0) {*code=0xd000;kk='i';}//(14
else if (strcmpi(s,"call")==0) {*code=0xe000;kk='l';}//(15//seulement pour call
else if (strcmpi(s,"pshi")==0) {*code=0xf000;kk='+';}//(16
else if (strcmpi(s,"popi")==0) {*code=0xf200;kk='1';}//(17
else if (strcmpi(s,"push")==0) {*code=0xf400;kk='+';}//(18
else if (strcmpi(s,"pop ")==0 ) {*code=0xf600;kk='1';}//(19
else if (strcmpi(s,"retn")==0) *code=0xf800;         //(20
else if (strcmpi(s,"swap")==0) *code=0xfa00;         //(21
else if (strcmpi(s,"insp")==0) {*code=0xfc00;kk='x';}//(22
else if (strcmpi(s,"desp")==0) *code=0xfe00; //(23
else if (strcmpi(s,"exit")==0) *oui='e';//exit le segment code
else if (strcmpi(s,"fin ")==0) {*oui='f';*code=0xffff;}//pour finir le programme
     else *oui='m';//le code n'est pas valide ==> erreur de code

if (*oui=='o')//si le code est valide ,on continue la conversion
{
//on va remplacer les 4 lettres de scode par des espaces
//pour qu'il n'y a plus des carecteres sauf les chifres d'adresse
scode[8]='\0';
strnset(scode,' ',5);
//on va convertir scode en un entier sachant que
//les nombres qu'ils sont ecrits en decimal
kaka=atoi(scode);
if(kk=='n')
{
if(kaka>0x0fff) *oui='n';//donnee assez grande
}
else if(kk=='d')
{
if((kaka>31)||(kaka<16)) *oui='d';//adresse de donnee incorrecte
}
else if(kk=='x')
{
if((kaka>*pp)||(kaka<0)) *oui='x';//adresse hors memoire
}
else if(kk=='1')
{
if(*pp<0) *oui='1';//on ne peut pas depiler
else *pp=*pp-1;//on peut depiler
}
else if(kk=='i')
{
if(kaka>15) *oui='i';//adresse hors segment d'instruction
}
else if(kk=='+') {*pp=*pp+1;}
else if(kk=='l')
{
if(kaka>15) *oui='i';//adresse hors segment d'instruction
else  *pp=*pp+1;
}
//********************s'il n'y a pas de defauts****************
if(*oui!='n'&&*oui!='d'&&*oui!='x'&&*oui!='i'&&*oui!='1')
//s'in n'y a pas de defauts
{
*code = *code + kaka;//code est code sur les 4 bits de poids fort
		//kaka est code sur les autres bits de poids faible
}
}
}//end convert
