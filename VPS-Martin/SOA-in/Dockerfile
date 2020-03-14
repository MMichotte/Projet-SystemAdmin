FROM resystit/bind9

COPY named.conf /etc/bind/named.conf
COPY internal.wt2-5.ephec-ti.be /etc/bind/internal.wt2-5.ephec-ti.be
COPY 108.40.178.51.in-addr.arpa /etc/bind/108.40.178.51.in-addr.arpa

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]