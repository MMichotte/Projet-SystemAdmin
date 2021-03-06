# To Do 

## VPS
 - [X] configurer accès professeur 
    * utilisateur : vvandens (clef ssh publique voir Moodle) 
    * ajouter au sudoers 
    * mdp ******** (voir énoncé projet)
 - [X] configurer SSH pour chaque membre du groupe sur chaque VPS 

## Prépa :
- [X] créer [répository gitHub](https://github.com/MMichotte/Projet-SystemAdmin)
- [X] créer [répository dockerHub](https://hub.docker.com/repositories) 
- [X] créer [wiki gitHub](https://github.com/MMichotte/Projet-SystemAdmin/wiki)
- [X] se mettre d'accord sur les outils de conception du rapport : [google docs](https://drive.google.com/drive/u/0/folders/1KsQfME9SijyddRHVL8zuym6rgmoJ9-3d)
- [X] nommer le responsable par mission 
    - mission n°1 (13/03) : _Morgan Valentin_
    - mission n°2 (27/03) : _Daniel Olivier_
    - mission n°3 (09/04) : _Martin Michotte_

## Conception 
- [X] adressage ip (statique)
- [x] design du schéma réseau Woodytoys (logique)
- [x] design du schéma réseau prototype (physique)

## Gestion des Services

### DNS 
```diff
! due date : 13 mars 
```
> domaine : wt2-5.ephec-ti.be
- [x] concevoir sous-domaine __wt2-5__
  - [X] fichier de zone
  - [X] glue records à envoyer au ns parent (professeur) 
    - [X] envoyé au professeur

### Web
```diff
! due date : 13 mars 
```
- [X] __outil ERP web__ accessible uniquement en interne (erp.intranet.wt2-5.ephec-ti.be)
- [X] __portail web__ public (www.wt2-5.ephec-ti.be)
- [x] __vente en ligne__ accessible revendeurs uniquement (b2b.wt2-5.ephec-ti.be)

### Sécurité
- [x] postes doivent avoir accès au services internes et externes
- [ ] contrôle de traffic web 
- [ ] gestion des identités des employés

### Mail
```diff
! due date : 27 mars 
```
- [x] __email employé__ : nom.prenome@woodytoys.be
  - [x] recevoir & envoyer via client mail classique (pas webmail interne) 
  - [x] recevoir & envoyer en déplacement ou à domicile 
- [x] __secrétaire__ : contact@woodytoys.be
- [x] __commerciaux__ : b2b@woodytoys.be

### VoIP
```diff
! due date : 9 mai 
```
> __plan d'adressage spécifique__ pour la téléphonie IP
- [x] accessible pour les __clients__ depuis internet (extérieur) 
    - [x] appel doivent aboutir chez la secrétaire (contact@woodytoys.be) 
- [x] Communication inter-employés :
  - [x] __ouvriers__ : téléphone IP (atelier + hangar) vers autres départements interne
  - [x] __secrétaire__ : softphone vers n'importe qui (y compris extérieur ?)
  - [x] __comptables__ : 
    - [x] numéro unique -> X peut joindre premier comptable disponible  
    - [x] numéro par bureau (2 bureaux) -> comptable peut joindre l'extérieur et tout l'interne (excepté directeur)
  - [x] __commerciaux__ : 
    - [x] peut joindre l'extérieur et tout l'interne (excepté directeur) ( numéro fixe ? )
    - [x] smartphones pour téléphoner en déplacement 
  - [x] __direction__ : 
    - [x] peut joindre l'extérieur et tout l'interne
    - [x] peut être joint qui via la secrétaire 
- [x] boîte vocale pour les employés 
- [x] Fusion d'entreprise 
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
* cahier des charges 
* traduction des besoins du client en language informatique 
* propositions de solutions techniques avec comparatif des alternatives possible 
* choix des justification de la solution
* besoins en maintenance 
* rapport sur ce qui a été déployé 
> max 4-5 pages

### Rapport technique  
> max 2-3 pages 

### Analyse de la sécurité 
> max 3-4 pages

### Wiki github 
Une section par service :
* Comment installer le service
* Comment configurer le service
* Comment maintenir le service 
* Comment vérifier le bon fonctionnement du service 
* Comment troubleshooter 
> plus de détail voir p9 de l'énoncé du projet
