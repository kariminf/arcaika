function youm
parameters da
ar=space(12)
do case
case dow(da)=1
ar="dimanche"
case dow(da)=2
ar="lundi"
case dow(da)=3
ar="mardi"
case dow(da)=4
ar="mercredi"
case dow(da)=5
ar="jeudi"
case dow(da)=6
ar="vendredi"
case dow(da)=7
ar="samedi"
endcase
return ar
function chahr
parameters da
ar=space(12)
do case
case month(da)=1
ar="janvier"
case month(da)=2
ar="f‚vrier"
case month(da)=3
ar="mars"
case month(da)=4
ar="avril"
case month(da)=5
ar="mai"
case month(da)=6
ar="juin"
case month(da)=7
ar="juillet"
case month(da)=8
ar="out"
case month(da)=9
ar="septembre"
case month(da)=10
ar="octobre"
case month(da)=11
ar="novembre"
case month(da)=12
ar="d‚cembre"
endcase
return ar









