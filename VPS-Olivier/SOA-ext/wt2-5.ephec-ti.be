$ORIGIN wt2-5.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.wt2-5.ephec-ti.be. m.valentin.students.ephec.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL
;
; NS configs
            IN      NS      ns.wt2-5.ephec-ti.be.
            IN      MX  10  mail
ns          IN      A       51.178.40.194

; SPF
@           IN	    TXT     "v=spf1 a mx ip4:51.178.40.194 include:_spf.google.com ~all"

; Web
b2b         IN      A       51.178.40.108
www         IN      A       51.178.40.108

; Mail
mail        IN      A       51.178.40.194
smtp        IN      CNAME   mail
