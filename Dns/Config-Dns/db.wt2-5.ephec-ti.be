; SOA EXTERNE => Comme SOA interne sans intranet
;
$ORIGIN wt2-5.ephec-ti.be.
$TTL    604800
@       IN      SOA     ns.wt2-5.ephec-ti.be admin.wt2-5.ephec-ti.be (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
; name servers => Resource records de type NS
        IN      NS      ns.wt2-5.ephec-ti.be.

; name servers => Resource records de type A
ns      IN      A       IP-VPS-Morgan

; services web

serveurWeb      IN      A       IP-VPS-Morgan
woodytoys       IN      CNAME   serveurWeb
b2b             IN	CNAME	serveurWeb

; mail (plus tard)


; voip (plus tard)