
# Informations conteneur mysql 

### Première mise en service de la DB:

1. Démarrer le conteneur (docker-compose up -d)
2. Ouvrir un shell it dans le conteneur
   ```bash
   docker exec -it mysql-db bash
   ```
3. Se loger en tant que root 
   ```bash
   mysql -uroot -p
   > password : 'sysadmin' #modifiable dans le docker-compose
   ```
4. Créer la DB 
    ```sql
   create database woodytoys_db;
   ```

### Manipuler la DB:

1. Démarrer le conteneur (docker-compose up -d)
2. Ajouter le script à exécuter dans le fichier temp.sql se trouvant sur le vps
3. Ouvrir un shell it dans le conteneur
   ```bash
   docker exec -it mysql-db bash
   ```
4. Exécuter le script sur notre db
   ```bash
   mysql -uroot -p woodytoys_db < data/temp.sql
   > password : 'sysadmin' #modifiable dans le docker-compose
   ```
5. Vérifier que le script c'est bien exécuté
   ```bash
   mysql -uroot -p
   > password : 'sysadmin' #modifiable dans le docker-compose

   show databases;
   use woodytoys_db
   show tables;
   select * from ... 
   ```
   
