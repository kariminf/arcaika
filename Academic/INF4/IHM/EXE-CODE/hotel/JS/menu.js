
var _expandCollapseIDPrefix;
function EyeBrowMenuBarSetHeight(TFly){
  var maxHeight = 200;
  var overflow = (TFly.DT.clientHeight > maxHeight);
    TFly.DT.style.height = ((overflow) ? maxHeight : TFly.DT.scrollHeight) + "px";
    TFly.DT.style.width = TFly.DT.scrollWidth + ((overflow) ? 20 :0) + "px";
  if(overflow) TFly.DT.style.overflow="auto"
}


function TFly_Init(name,  offsetLeft, offsetTop, alignment, anyIter, anyTime, staticHover, popupHover, popupLatency, hideLatency, onInit, onPopup, onHide){
  var TFly = document.getElementById(name); 
  TFly.alignment = alignment;
  TFly.DT = document.getElementById(name+"_Popup")
  TFly.F = document.getElementById(name+"_Anim")
  
  TFly.oX = offsetLeft
  TFly.oY = offsetTop;

  TFly.AnyIter = anyIter;
  TFly.AnyTime = anyTime;

  TFly.popupLatency = popupLatency;
  TFly.hideLatency = hideLatency;
  TFly.onPopup = onPopup;
  TFly.onHide = onHide;
  
  TFly.IsHover=false;
  
  TFly.className_ = TFly.className;
  TFly.DT.className_=TFly.DT.className
  
  TFly.onmouseover = function(){TFly.IsHover=true; if(staticHover!=''){TFly.className=staticHover}; TFly_Popup(TFly,true);}
  TFly.onmouseout = function(){if(staticHover!=''){TFly.className=TFly.className_};TFly_Popup(TFly,false);TFly.DT.blur();TFly.IsHover=false;}
  
  
  if(document.all){
    TFly.onactivate = function(){if(!TFly.IsHover)TFly.onmouseover();}
    TFly.ondeactivate = function(){TFly.onmouseout();}
  }else{
    TFly.onfocus = function(){TFly.onmouseover()}
    TFly.onblur = function(){TFly.onmouseout()}
  }
 
 
  TFly.DT.onmouseover = function(){ TFly.IsHover=true; if(popupHover!=''){TFly.DT.className=popupHover;};TFly_Popup(TFly,true);}
  TFly.DT.onmouseout = function(){ if(popupHover!=''){TFly.DT.className=TFly.DT.className_};TFly_Popup(TFly,false);TFly.IsHover=false; }
  TFly.DT.onclick = function(){ if(popupHover!=''){TFly.DT.className=TFly.DT.className_};TFly_Popup(TFly,false);TFly.IsHover=false; }

  TFly_CallClientFunction(onInit, TFly)
}

function TFly_Reposition(TFly){
  var clientWidth = document.body.scrollWidth - 20; //scroller width
  var width = TFly.DT.offsetWidth;
  var absX = TFly.DT.offsetLeft 
  var d = TFly.DT
  while(d = d.offsetParent)
    absX += d.offsetLeft

  if(clientWidth<(absX+width)){
   var diff = clientWidth - absX -width
   TFly.DT.style.left = TFly.DT.offsetLeft + diff + "px"
  }
}

function TFly_CallClientFunction(name, TFly){
    if(name!=null &&  name!="")
      eval( name + "(TFly);");
}

function TFly_SetPosition(TFly, obj){
  obj.style.top = TFly.oY + TFly.offsetHeight+ "px";
  obj.style.left = TFly.oX + (TFly.offsetWidth - obj.offsetWidth )*(1+TFly.alignment)/2 + "px";
}

function TFly_Popup(TFly,value){
  if(TFly.timer!=null ) window.clearTimeout(TFly.timer)
  if(value){
    if(TFly.status=="on") return
    var timeout = (TFly.status=="active") ? 0 : TFly.popupLatency
    if(TFly.AnyIter>0 && TFly.AnyTime>0)
      TFly.timer = window.setTimeout(function(){TFly_AnimateStart(TFly,true,TFly.F.curIter);},timeout)
    else
      TFly.timer = window.setTimeout(function(){TFly_SetVisibility(TFly,true);},timeout)
  }else{
    if(TFly.status=="off") return
    var timeout = (TFly.status=="active") ? 0 : TFly.hideLatency
    if(TFly.AnyIter>0 && TFly.AnyTime>0)
      TFly.timer = window.setTimeout(function(){TFly_AnimateStart(TFly,false,TFly.F.curIter);},timeout)
    else
      TFly.timer = window.setTimeout(function(){TFly_SetVisibility(TFly,false);},timeout)
  }
}

function TFly_SetVisibility(TFly, value){
      if(value==true){
        TFly_SetPosition(TFly,TFly.DT);
        TFly.DT.style.visibility = "visible"
        TFly.style.zIndex = "999"
        TFly_Reposition(TFly);
      }else{
        TFly.DT.style.visibility = "hidden"
        TFly.style.zIndex = "0"
        TFly.DT.style.left = "-10000px"
      }
}

function TFly_AnimateStart(TFly, inout, curIter){
    if(TFly.F.timer!=null) window.clearTimeout(TFly.F.timer);
    if(curIter==null) curIter=0;
    if(TFly.status !="active"){
        TFly.status ="active";
        TFly.F.style.visibility = "visible";
        TFly.DT.style.visibility="hidden";
    }
    if(curIter<0 || curIter>TFly.AnyIter ){
        TFly.F.curIter = (curIter<1) ? 0 : TFly.AnyIter;
        TFly.status = (TFly.F.curIter==TFly.AnyIter) ? "on": "off";
        TFly.F.style.visibility = "hidden";
        TFly_SetPosition(TFly,TFly.DT);
        TFly.style.zIndex=(TFly.F.curIter==TFly.AnyIter) ? "999" : "0";
        if(TFly.F.curIter==TFly.AnyIter){
          TFly.status = "on";
          TFly_SetVisibility(TFly,true);
          TFly_CallClientFunction(TFly.onPopup, TFly)
        }else{
          TFly.status = "off";
          TFly_SetVisibility(TFly,false);
          TFly_CallClientFunction(TFly.onHide, TFly)
        }
    }else{
        var per = curIter*(95/TFly.AnyIter)+ 5;
        TFly.F.style.visibility = "hidden";
        TFly.F.style.width=TFly.DT.offsetWidth/100*per + "px";
        TFly.F.style.height=TFly.DT.offsetHeight/100*per + "px";
        TFly_SetPosition(TFly, TFly.F);
        TFly.F.style.visibility = "visible";
        var timeout = (per==100 ) ? 0 : TFly.AnyTime - (TFly.AnyTime/(TFly.AnyIter)*(curIter)); 
        curIter += (inout) ? 1:-1;
        TFly.F.timer = window.setTimeout(function(){TFly_AnimateStart(TFly, inout, curIter)},timeout);
        TFly.F.curIter = curIter;
    }
}
