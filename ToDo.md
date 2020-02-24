# To Do 

## VPS
 - [ ] configurer accès professeur 
    * utilisateur : vvandens (clef ssh publique voir Moodle) 
    * ajouter au sudoers 
    * mdp ******** (voir énoncé projet)
 - [ ] configurer SSH pour chaque membre du groupe sur chaque VPS 

## Prépa :
- [X] créer [répository gitHub](https://github.com/MMichotte/Projet-SystemAdmin)
- [X] créer [répository dockerHub](https://hub.docker.com/repositories) 
- [X] créer [wiki gitHub](https://github.com/MMichotte/Projet-SystemAdmin/wiki)
- [ ] se mettre d'accord sur les outils de conception du rapport 
- [ ] nommer le responsable par mission 

## Conception 
- [ ] adressage ip (statique)
- [ ] design du schéma réseau Woodytoys (logique)
- [ ] design du schéma réseau prototype (physique)

## Gestion des Services

### DNS 
```diff
! due date : 13 mars 
```
> domaine : wt2-5.ephec-ti.be
- [ ] concevoir sous-domaine __wt2-5__
  - [ ] fichier de zone
  - [ ] glue records à envoyer au ns parent (professeur) 

### Web
```diff
! due date : 13 mars 
```
- [ ] __outil ERP web__ accessible uniquement en interne 
- [ ] __portail web__ public (www.woodytoys.be)
- [ ] __vente en ligne__ accessible revendeurs uniquement (b2b.woodytoys.be)

### Sécurité
- [ ] postes doivent avoir accès au services internes et externes
- [ ] contrôle de traffic web 
- [ ] gestion des identités des employés

### Mail
```diff
! due date : 27 mars 
```
- [ ] __email employé__ : nom.prenome@woodytoys.be
  - [ ] recevoir & envoyer via client mail classique (pas webmail interne) 
  - [ ] recevoir & envoyer en déplacement ou à domicile 
- [ ] __secrétaire__ : contact@woodytoys.be
- [ ] __commerciaux__ : b2b@woodytoys.be

### VoIP
```diff
! due date : 9 mai 
```
> __plan d'adressage spécifique__ pour la téléphonie IP
- [ ] accessible pour les __clients__ depuis internet (extérieur) 
    - [ ] appel doivent aboutir chez la secrétaire (contact@woodytoys.be) 
- [ ] Communication inter-employés :
  - [ ] __ouvriers__ : téléphone IP (atelier + hangar) vers autres départements interne
  - [ ] __secrétaire__ : softphone vers n'importe qui (y compris extérieur ?)
  - [ ] __comptables__ : 
    - [ ] numéro unique -> X peut joindre premier comptable disponible  
    - [ ] numéro par bureau (2 bureaux) -> comptable peut joindre l'extérieur et tout l'interne (excepté directeur)
  - [ ] __commerciaux__ : 
    - [ ] peut joindre l'extérieur et tout l'interne (excepté directeur) ( numéro fixe ? )
    - [ ] smartphones pour téléphoner en déplacement 
  - [ ] __direction__ : 
    - [ ] peut joindre l'extérieur et tout l'interne
    - [ ] peut être joint qui via la secrétaire 
- [ ] boîte vocale pour les employés 
- [ ] Fusion d'entreprise 
    > voir p4 de l'énoncé du projet

### Fichiers (optionnel)
- [ ] __répertoire personnel__ pour chaque employé, la secrétaire ainsi que le directeur
- [ ] __répertoire commun__ pour chaque groupe d'employés
  - [ ] accessible via l'explorateur natif du système 
- [ ] prévoir __back-up__ facile 
- [ ] __accessibilité en déplacement__ pour les employés. 


## Délivrables   
* réalisé de manière incrémentale 
* maj des version à chaque modification
* nouveaux éléments et éléments modifiés en italique 
* Un responsable par groupe pour chaque présentation (idem qu'en devWeb)

### Rapport client 
-> cahier des charges 
-> traduction des besoins du client en language informatique 
-> propositions de solutions techniques avec comparatif des alternatives possible 
-> choix des justification de la solution
-> besoins en maintenance 
-> rapport sur ce qui a été déployé 
> max 4-5 pages

### Rapport technique 
-> //TODO  
> max 2-3 pages 

### Analyse de la sécurité 
-> //TODO
> max 3-4 pages

### Wiki github 
-> Comment installer le service
-> Comment configurer le service
-> Comment maintenir le service 
-> Comment vérifier le bon fonctionnement du service 
-> Comment troubleshooter 
> plus de détail voir p9 de l'énoncé du projet
