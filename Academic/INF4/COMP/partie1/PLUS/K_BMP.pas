{$G+ :Utilise les fonctions du 286 : SHL & SHR (multiplication ultra rapide) }

unit Bmp;

{ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ}
                               {³} INTERFACE {³}
{ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ}

uses
{@@@@@@@@@@@@@@@@@@@}
SCLAVIER,
{@@@@@@@@@@@@@@@@@@@}
  GestFich,   { Gestion de fichiers : Ouverture, cr‚ation, taille, erreur,...}
  PalVideo,   { Gestion de la palette graphique des couleurs                 }
  StopProg,   { Arrˆte le programme en cas d'erreur et explique              }
  Tampon,     { Un tampon pour charger une ligne de donn‚e                   }
  TmpFich,    { Lecture par tampon dans le fichier, uniquement d‚compres. RLE}
  Vesa2;      { Pour les modes vid‚os ‚tendus                                }

const
  _CompressBmpAucune = 0;
  
type
  EnteteBmpWindows = record
    Signature      : Word;    { Signature BMP = 'BM'= 424Dh                  }
    TailleFich     : LongInt; { Taille du fichier                            }
    Reserve        : LongInt; { Reserv‚ -> toujours ‚gal … 00000000h         }
    DebutDonnee    : LongInt; { Position du fichier ou d‚butent les donn‚es  }
                              { de l'image                                   }
    TailleEnTete   : LongInt; { Taille de l'en-tˆte en octets                }
    Larg           : LongInt; { Largeur de l'image (en pixel)                }
    Haut           : LongInt; { Hauteur de l'image (en pixel)                }
    NbrPlan        : Word;    { Nombre de plans utilis‚s (=1)                }
    BitsParPixel   : Word;    { Nombre de bits par pixels                    }
    Compression    : LongInt; { 0: aucune compression                        }
    TailleImage    : LongInt; { Taille de l'image en octets                  }
    LargDPI        : LongInt; { ??? picture with in pels per meter ???       }
    HautDPI        : LongInt; { ??? picture height in pels per meter ???     }
    NbrCoulUtile   : LongInt; { Nombre de couleurs utilis‚es (si ‚gale … 0   }
                              { toutes les couleurs sont utilis‚es)          }
    NbrCoulImportante:LongInt;{ Nombre de couleurs importantes (si ‚gale … 0 }
                              { toutes les couleurs sont importantes)        }
  end;

var
  EntetBmpWindows: EnteteBmpWindows;

{ Affiche une image au format BMP. Si ImagX ou ImagY est n‚gatif, l'image }
{ est centr‚e dans l'axe pr‚cis‚  }
procedure AfficheBmp (ImagX,ImagY: integer; NomFich: String);

procedure ChargeBmp  (Dest: pointer; NomFich: String);

{ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ}
                            {³} IMPLEMENTATION {³}
{ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ}

var
  i,ix,iy,                             { It‚rations                          }
  Index,                               { Index de la palette                 }
  NbrCoul,                             { Nombre de couleurs                  }
  Vram,                                { Position dans la m‚moire vid‚o      }
  LargOctet,                           { Largeur d'une ligne en octet        }
  Min         : Word;                  { Erreur d'ouverture                  }
  TmpO        : byte;                  { Un octet temporaire                 }

  { D‚compression RLE }
  FinLigne,                            { Temoin de la fin de la ligne        }
  FinBitmap   : Boolean;               { Temoin de la fin de l'image bitmap  }

procedure AfficheBmp (ImagX,ImagY: integer; NomFich: String);
var TmpTxt: String[3];
Begin
  {- Lit l'en-tˆte ----------------------------------------------------------}
  TestErreurFich (OuvreFichier (FichTmp,_LectureSeule,NomFich,'bmp'),'l''affichage d''une image BMP',NomFich);
  BlockRead (FichTmp,EntetBmpWindows,SizeOf(EnteteBmpWindows));

  {- V‚rification du format -------------------------------------------------}
  with EntetBmpWindows do begin
    { Format bitmap ? (ID='BM') }
    if Signature<>$4D42 then
      StopProgram ('l''affichage de l''image bitmap '''+NomFich+'''',
                   'Cette image n''est pas une image au format bitmap');

    { Format OS/2 ? }
    if EntetBmpWindows.TailleEntete=12 then with EntetBmpOS2 do begin
      Reset (FichTmp,1);
      BlockRead (FichTmp,EntetBmpOS2,SizeOf(EnteteBmpOS2));

      fillchar (EntetBmpWindows,SizeOf(EnteteBmpWindows),0);

      EntetBmpWindows.TailleEntete := TailleEntete;
      EntetBmpWindows.Larg := Larg;
      EntetBmpWindows.Haut := Haut;
      EntetBmpWindows.NbrPlan := NbrPlan;
      EntetBmpWindows.BitsParPixel := BitsParPixel;
    end else if EntetBmpWindows.TailleEntete<>40 then begin
      Str (TailleEntete,TmpTxt);
      StopProgramInfo ('l''affichage de l''image bitmap '''+NomFich+'''',
                       'Taille de l''en-tˆte incorrect ou format non support‚',
                       'taille en-tˆte='+TmpTxt+', contre 12 ou 40');
    end;

    { 1, 4, 8 ou 24 bits/pixel ? }
    if (BitsParPixel<>1) and (BitsParPixel<>4) and (BitsParPixel<>8) and (BitsParPixel<>24) then begin
      Str (BitsParPixel,TmpTxt);
      StopProgram ('l''affichage de l''image bitmap '''+NomFich+'''',
                   'Les images ayant '+TmpTxt+' bits/pixel ne sont pas support‚es');
    end;

    { Compression inconnu ? }
    if (Compression<>_CompressBmpAucune) and
       (Compression<>_CompressBmpRle4) and (Compression<>_CompressBmpRle8) then begin
      Str (Compression,TmpTxt);
      StopProgram ('l''affichage de l''image bitmap '''+NomFich+'''',
                   'Les images ayant une compression de '''+TmpTxt+''' ne sont pas support‚es');
    end;

    {- Change la palette (si l'image est en 4 ou 8 bits/pixel) -------------}
    if BitsParPixel<=8 then begin
      { Calcule le nombre de couleur utilis‚es }
      if NbrCoulUtile=0 then
        NbrCoul := 1 shl BitsParPixel
      else
        NbrCoul := NbrCoulUtile;

      if EntetBmpWindows.TailleEntete=12 { En-tˆte OS/2 -> RVB } then begin
        { Lit la palette }
        BlockRead(FichTmp,TamponOct, NbrCoul*3);

        { Range la palette dans l'ordre RVB et non BVR }
        vram := 0; index := 0;
        for i := 1 to NbrCoul do begin
          TmpO := TamponOct[index{ +0}] shr 2; { Nul   = Rouge/4 }
          TamponOct[index{ +0}] := TamponOct[index +2] shr 2; { Rouge = Bleu /4}
          inc (index);
          TamponOct[index{ +1}] := TamponOct[index{ +1}] shr 2; { Vert  = Vert /4 }
          inc (index);
          TamponOct[index{ +2}] := TmpO;                      { Bleu  = Rouge/4}
          inc (index);
        end;
      end else begin
        { Lit la palette }
        BlockRead(FichTmp,TamponOct, NbrCoul shl 2);

        { Range la palette dans l'ordre RVB et non BVR0 (0 veut dire octet nul)}
        vram := 0; index := 0;
        for i := 1 to NbrCoul do begin
          TamponOct[vram  +3] := TamponOct[vram +0] shr 2; { Nul   = Rouge/4 }
          TamponOct[index +0] := TamponOct[vram +2] shr 2; { Rouge = Bleu /4 }
          TamponOct[index +1] := TamponOct[vram +1] shr 2; { Vert  = Vert /4 }
          TamponOct[index +2] := TamponOct[vram +3]      ; { Bleu  = Nul     }
          inc (index,3); inc(vram,4);
        end;
      end;

      { Modifit la palette dans la carte vid‚o }
      ChangeGrandePal (TamponOct,0,NbrCoul);
    end;

    {- Des p'tits calculs ---------------------------------------------------}
    if ImagX<0 then ImagX := (ModeInfo.LargEcran-larg) shr 1;
    if ImagY<0 then ImagY := (ModeInfo.HautEcran-haut) shr 1;

    { Ajuste la largeur selon le nombre de bits/pixel }
    LargOctet := Larg;
    if LargOctet mod 4<>0 then LargOctet := LargOctet +(4 - LargOctet mod 4);
    if BitsParPixel=1 then LargOctet := (LargOctet or 7) shr 3
    else if BitsParPixel=4 then LargOctet := LargOctet shr 1
    else if BitsParPixel=24 then LargOctet := LargOctet*3;
    if LargOctet mod 4<>0 then LargOctet := LargOctet +(4 - LargOctet mod 4);
{ModeTxt;
Writeln (Larg,'x',Haut);
Writeln (LargOctet);
LitTouche;
ProcAppeleeStop;
Halt;}

    Min := ImagY;
    inc (Haut,ImagY);

    {- Affichage de l'image -------------------------------------------------}
    dec (haut);

    Case BitsParPixel of
    1: for iy := Haut downto Min do begin
      BlockRead (FichTmp,TamponOct,LargOctet);

      index := LargOctet shl 3;
      for i := LargOctet-1 downto 0 do begin
        dec(index); TamponOct[index] := TamponOct[i]       and 1;
        dec(index); TamponOct[index] := TamponOct[i] shr 1 and 1;
        dec(index); TamponOct[index] := TamponOct[i] shr 2 and 1;
        dec(index); TamponOct[index] := TamponOct[i] shr 3 and 1;
        dec(index); TamponOct[index] := TamponOct[i] shr 4 and 1;
        dec(index); TamponOct[index] := TamponOct[i] shr 5 and 1;
        dec(index); TamponOct[index] := TamponOct[i] shr 6 and 1;
        dec(index); TamponOct[index] := TamponOct[i] shr 7      ;
      end;

      EcritBlocVesa (ImagX, iy, Larg, TamponOct);
    end;

    4: if Compression=_CompressBmpRle4 then begin
      { D‚compression RLE 4 bits/pixel }
      InitTamponFich (-1);

      iy := Haut; FinBitmap := FALSE;
      repeat
        FinLigne := FALSE; ix := 0;
        repeat
          TmpO := LitOctetTmpFich;
          if TmpO=0 then begin
            TmpO := LitOctetTmpFich;
            Case TmpO of
            0: FinLigne  := TRUE;
            1: FinBitmap := TRUE;
            2: begin
              { ********** }
              StopProgram ('l''affichage de l''image bitmap '''+NomFich+'''',
                           'D‚placement du curseur non support‚');
              { ********** }

              TmpO := LitOctetTmpFich;
              TmpO := LitOctetTmpFich;    { Lit X (2 octets) }
              TmpO := LitOctetTmpFich;
              TmpO := LitOctetTmpFich;    { Lit Y (2 octets) }
            end else begin
              { Lit X octets }

              NbrCoul := { Nombre de r‚p‚tition } TmpO;

              if ix and 1=1 then
                for i := 1 to NbrCoul shr 1 do begin
                  TmpO := LitOctetTmpFich;
                  TamponOct[ix] := TmpO and 15; inc (ix);
                  TamponOct[ix] := TmpO shr  4; inc (ix);
                end
              else
                for i := 1 to NbrCoul shr 1 do begin
                  TmpO := LitOctetTmpFich;
                  TamponOct[ix] := TmpO shr  4; inc (ix);
                  TamponOct[ix] := TmpO and 15; inc (ix);
                end;

              { R‚p‚tition impaire ? Lit le dernier pixel }
              if NbrCoul and 1=1 then begin
                TmpO := LitOctetTmpFich;

                if ix and 1=1 then
                  TamponOct[ix] := TmpO and 15
                else
                  TamponOct[ix] := TmpO shr  4;

                inc (ix);

                { Lit l'octet nul }
                LitOctetTmpFich;
              end;

              { R‚p‚tition/2 impaire ? Lit l'octet nul }
              if (NbrCoul shr 1) and 1=1 then LitOctetTmpFich;
            end end;
          end else begin
            { R‚pŠte X octets }
            NbrCoul := { Nombre de r‚p‚tition } TmpO;
            TmpO := LitOctetTmpFich;

            if ix and 1=1 then
              for i := 1 to NbrCoul shr 1 do begin
                TamponOct[ix] := TmpO and 15; inc (ix);
                TamponOct[ix] := TmpO shr  4; inc (ix);
              end
            else
              for i := 1 to NbrCoul shr 1 do begin
                TamponOct[ix] := TmpO shr  4; inc (ix);
                TamponOct[ix] := TmpO and 15; inc (ix);
              end;
         end;
        until FinLigne or FinBitmap;

        EcritBlocVesa (ImagX,iy,larg,TamponOct);
        dec (iy);
      until FinBitmap or TamponFich.Fin;

      FinTamponFich;
    { Image bitmap non compress‚e cod‚e en 4 bpp }
    end else for iy := Haut downto Min do begin
     BlockRead (FichTmp,TamponOct,LargOctet);

     index := LargOctet*2;
     for i := LargOctet-1 downto 0 do begin
       dec (index); TamponOct[index] := TamponOct[i] and 15;
       dec (index); TamponOct[index] := TamponOct[i] shr 4;
     end;

     EcritBlocVesa (ImagX, iy, larg, TamponOct);
    end;

    8: if Compression=_CompressBmpRle8 then begin
      { D‚compression RLE 8 bits/pixel }
      InitTamponFich (-1);

      iy := Haut; FinBitmap := FALSE;
      repeat
        FinLigne := FALSE; ix := 0;
        repeat
          TmpO := LitOctetTmpFich;
          if TmpO=0 then begin
            TmpO := LitOctetTmpFich;
            Case TmpO of
            0: FinLigne  := TRUE;
            1: FinBitmap := TRUE;
            2: begin
              {***************************}
              StopProgram ('affichage de l''image bitmap '''+NomFich+'''',
                           'D‚placement du curseur non support‚ (compression RLE)');
              {***************************}

              TmpO := LitOctetTmpFich;
              TmpO := LitOctetTmpFich;    { Lit X (2 octets) }
              TmpO := LitOctetTmpFich;
              TmpO := LitOctetTmpFich;    { Lit Y (2 octets) }
            end else begin
              { Lit X octets }
              for i := 1 to TmpO do begin
                TamponOct[ix] := LitOctetTmpFich;
                inc (ix);
              end;

              { R‚p‚tition impaire ? Lit l'octet nul }
              if TmpO and 1=1 then LitOctetTmpFich;
            end end;
          end else begin
            { R‚pŠte X octets }
            NbrCoul := { Nombre de r‚p‚tition } TmpO;
            fillchar (TamponOct[ix],NbrCoul,LitOctetTmpFich);
            inc (ix,NbrCoul);
          end;
        until FinLigne or FinBitmap;
        EcritBlocVesa (ImagX,iy,larg,TamponOct);
        dec (iy);
      until FinBitmap or TamponFich.Fin;

      FinTamponFich;
    end else { Image bitmap non compress‚e cod‚e en 8 bpp } for iy := Haut downto Min do begin
      BlockRead (FichTmp,TamponOct,LargOctet);
      EcritBlocVesa (ImagX, iy, larg, TamponOct);
    end;

    24: for iy := Haut downto Min do begin
      BlockRead (FichTmp,TamponOct,LargOctet);
      EcritBlocVesa (ImagX, iy, Larg, TamponOct);
    end end;
  end;

  Close (FichTmp); { Ferme le fichier }
end;

procedure ChargeBmp (Dest: pointer; NomFich: String);
var TmpTxt: String[3];
Begin
  {- Lit l'en-tˆte ----------------------------------------------------------}
  TestErreurFich (OuvreFichier (FichTmp,_LectureSeule,NomFich,'bmp'),'chargement d''une image BMP',NomFich);

  BlockRead (FichTmp,EntetBmpWindows,SizeOf(EntetBmpWindows));

  {- V‚rification du format -------------------------------------------------}
  with EntetBmpWindows do begin

    { Format bitmap 'BM' }
    if Signature<>$4D42 then
      StopProgram ('chargement de l''image bitmap '''+NomFich+'''',
                   'Ce fichier n''est pas au format bitmap (.BMP)');

    { Format OS/2 ? }
    if EntetBmpWindows.TailleEntete=12 then with EntetBmpOS2 do begin
      Reset (FichTmp,1);
      BlockRead (FichTmp,EntetBmpOS2,SizeOf(EnteteBmpOS2));

      fillchar (EntetBmpWindows,SizeOf(EnteteBmpWindows),0);

      EntetBmpWindows.TailleEntete := TailleEntete;
      EntetBmpWindows.Larg := Larg;
      EntetBmpWindows.Haut := Haut;
      EntetBmpWindows.NbrPlan := NbrPlan;
      EntetBmpWindows.BitsParPixel := BitsParPixel;
    end else if EntetBmpWindows.TailleEntete<>40 then begin
      Str (TailleEntete,TmpTxt);
      StopProgramInfo ('chargement de l''image bitmap '''+NomFich+'''',
                       'Taille de l''en-tˆte incorrect ou format non support‚',
                       'taille en-tˆte='+TmpTxt+' contre 12 ou 40');
    end;

    { 256 couleurs ? }
    if BitsParPixel<>8 then
      StopProgram ('chargement de l''image bitmap '''+NomFich+'''',
                   'Image en 256 couleurs demand‚e');

    if 65536<LongInt(Larg)*Haut then
      StopProgram ('chargement de l''image bitmap '''+NomFich+'''',
                   'Image d''une taille trop importante (65 Ko maximum)');

    {- Charge la palette --------------------------------------------------------}

    { Calcule le nombre de couleur utilis‚es }
    if NbrCoulUtile=0 then
      NbrCoul := 1 shl BitsParPixel
    else
      NbrCoul := NbrCoulUtile;

    if EntetBmpWindows.TailleEntete=12 { En-tˆte OS/2 -> RVB } then begin
      { Lit la palette }
      BlockRead(FichTmp,TamponOct, NbrCoul*3);

      { Range la palette dans l'ordre RVB et non BVR }
      vram := 0; index := 0;
      for i := 1 to NbrCoul do begin
        TmpO := TamponOct[index{ +0}] shr 2; { Nul   = Rouge/4 }
        TamponOct[index{ +0}] := TamponOct[index +2] shr 2; { Rouge = Bleu /4}
        inc (index);
        TamponOct[index{ +1}] := TamponOct[index{ +1}] shr 2; { Vert  = Vert /4 }
        inc (index);
        TamponOct[index{ +2}] := TmpO;                      { Bleu  = Rouge/4}
        inc (index);
      end;
    end else begin
      { Lit la palette }
      BlockRead(FichTmp,TamponOct, NbrCoul shl 2);

      { Range la palette dans l'ordre RVB et non BVR0 (0 veut dire octet nul)}
      vram := 0; index := 0;
      for i := 1 to NbrCoul do begin
        TamponOct[vram  +3] := TamponOct[vram +0] shr 2; { Nul   = Rouge/4 }
        TamponOct[index +0] := TamponOct[vram +2] shr 2; { Rouge = Bleu /4 }
        TamponOct[index +1] := TamponOct[vram +1] shr 2; { Vert  = Vert /4 }
        TamponOct[index +2] := TamponOct[vram +3]      ; { Bleu  = Nul     }
        inc (index,3); inc(vram,4);
      end;
    end;

    { Modifit la palette dans la carte vid‚o }
    ChangeGrandePal (TamponOct,0,NbrCoul);

    {- Des p'tits calculs ---------------------------------------------------}
    if larg mod 4<>0 then larg := larg - larg mod 4 +4;

    Min := 0;

    {- Affichage de l'image -------------------------------------------------}
    dec (haut);
    index := Haut*larg;
    For i := Haut downto Min do begin
      BlockRead (FichTmp,TamponOct,larg);
      Move (TamponOct, mem[seg(Dest^): Ofs(Dest^) +index] ,larg);
      Dec (index,larg);
    End;
  end;

  Close (FichTmp); { Ferme le fichier }
end;

{ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ}
{                          ³ CHARGEMENT DE L'UNITE ³                         }
{ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ}

Begin
  { Rien pour le d‚marrage }
End.

