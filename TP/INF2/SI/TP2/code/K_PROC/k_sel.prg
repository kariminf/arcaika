procedure sel0
select a
use k_sys\k_lan
select b
use k_sys\k_pro
select c
use k_sys\k_pas
return
******************
procedure sel1
select 1
use k_dbf\k_emp index k_ntx\k_emp1
reindex
select 2
use k_dbf\k_fon index k_ntx\k_fon1
reindex
select 3
use k_dbf\k_mar index k_ntx\k_mar1
reindex
select 4
use k_dbf\k_gra
select 5
use k_dbf\k_sal
select 6
use k_dbf\k_sec index k_ntx\k_sec1 &&&, k_ntx\k_sec2
reindex
select 7
use k_dbf\k_ga1 
select 8
use k_dbf\k_ga2
return
******************
procedure sel2
select 9
use k_dbf\k_esp index k_ntx\k_esp1
reindex
select 10
use k_dbf\k_gro
select 11
use k_dbf\k_ind index k_ntx\k_ind2
reindex
select 12
use k_dbf\k_mes index k_ntx\k_mes1
reindex
select 13
use k_dbf\k_par index k_ntx\k_par1
reindex
select 14
use k_dbf\k_mor index k_ntx\k_mor1
reindex
return
