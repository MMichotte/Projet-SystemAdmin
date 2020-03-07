# Config DNS (Bind9) : 
---
⚠ **Il manque les adresses IP des VPS !**

## Fichiers

- **`resolv.conf`**
  - **_/etc/resolv.conf_**
  - Indique où se trouve le résolveur.
- **`db.wt2-5.ephec-ti.be`**
  - **_/etc/bind/db.wt2-5.ephec-ti.be_**
  - Fichier de zone
    - **SOA Externe.**
- **`interne.db.wt2-5.ephec-ti.be`**
  - **_/etc/bind/interne.db.wt2-5.ephec-ti.be_**
  - Fichier de zone
    - **SOA Interne**

---

- **`named.conf`**
  - **_/etc/bind/named.conf_**
  - **PAS modifier**
  - Permet de separer la structure dns en 3 fichiers (default-zones, local et options)
    - Ce fichier "pointe" vers les 3 autres.
- **`named.conf.default-zones`**
  - **_/etc/bind/named.conf.default-zones_**
  - **PAS modifier**
  - Contient les zones par défaut
- **`named.conf.local`**
  - **_/etc/bind/named.conf.local_**
  - **IMPORTANT !**
  - Contient la liste des noms de domaine gérés par le serveur DNS
- **`named.conf.options`**
  - **_/etc/bind/named.conf.options_**