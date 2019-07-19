* TIGFET Models
.hdl nw_pgd_cg_pgs_10.va

.MACRO TIGFET10nm D PGD CG PGS S nw=4
XMOS Din PGD CG PGS Sin nw_pgd_cg_pgs_10 n=nw
C1 PGD Din 27a*0.5 Scale=nw
C2 PGD Sin 4a*0.5 Scale=nw
C3 CG Din 15a*0.5 Scale=nw
C4 CG Sin 16a*0.5 Scale=nw
C5 PGS Din 4a*0.5 Scale=nw
C6 PGS Sin 27a*0.5 Scale=nw
R1 Din D 20 Scale='1/nw'
R2 Sin S 20 Scale='1/nw'
.EOM
