$ORIGIN internal.wt2-5.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.internal.wt2-5.ephec-ti.be. m.valentin.students.ephec.be (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL
;
; name servers => RR de type NS
            IN      NS      ns.internal.wt2-5.ephec-ti.be.

; name servers => RR de type A
ns          IN      A       51.178.40.108

; services web
intranet    IN      A       51.178.40.108

b2b         IN      A       51.178.41.120
www         IN      A       51.178.41.120
mysql       IN      A       51.178.41.120

; services mail
mail        IN      A       51.178.40.194
smtp        IN      CNAME   mail
imap        IN      CNAME   mail
