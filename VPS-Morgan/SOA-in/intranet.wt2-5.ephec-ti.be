$ORIGIN intranet.wt2-5.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.intranet.wt2-5.ephec-ti.be. m.valentin.students.ephec.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL
;
; name servers => RR de type NS
            IN      NS      ns.intranet.wt2-5.ephec-ti.be.

; name servers => RR de type A
ns          IN      A       172.16.0.3

; services web
erp         IN      A       172.16.0.4
mysql       IN      A       172.16.0.5
