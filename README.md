# UPB-System

## El tutorial que seguí

[Cómo configurar una replicación maestro-esclavo de MySQL en Docker](https://dev.to/siddhantkcode/how-to-set-up-a-mysql-master-slave-replication-in-docker-4n0a)

Clonar el repositorio y ejecutar el siguiente comando:
```bash
docker-compose up -d
```

### Para configurar el maestro

```bash
docker exec -it mysql-upb-master bash
mysql -uroot -p
upbgeneraladmin
```
```sql
ALTER USER 'replication_user'@'%' IDENTIFIED WITH 'mysql_native_password' BY 'replication_password';
GRANT REPLICATION SLAVE ON *.* TO 'replication_user'@'%';
FLUSH PRIVILEGES;
SHOW MASTER STATUS; -- Para ver los atributos necesarios: MASTER_LOG_FILE, MASTER_LOG_POS;
```
## Para configurar los esclavos
```bash
docker exec -it mysql-lpz bash
mysql -uroot -p
upblpzadmin
```
```sql
-- Cambiar la configuración de master
CHANGE MASTER TO
  MASTER_HOST='mysql-upb-master',
  MASTER_USER='replication_user',
  MASTER_PASSWORD='replication_password',
  MASTER_LOG_FILE='mysql-bin.xxxxxx',
  MASTER_LOG_POS=xxxx;

CHANGE MASTER TO
  MASTER_HOST='mysql-upb-master',
  MASTER_USER='replication_user',
  MASTER_PASSWORD='replication_password',
  MASTER_LOG_FILE='mysql-bin.000003',
  MASTER_LOG_POS=850;

START SLAVE;

SHOW SLAVE STATUS\G
-- Los atributos Slave_IO_Running y Slave_SQL_Running show muestran "Yes".

STOP REPLICA IO_THREAD; -- Si se debe corregir algún error
```
### *Lo mismo para los siguientes esclavos*
```bash
docker exec -it mysql-cbba bash
mysql -uroot -p
upbcbbaadmin
```
```bash
docker exec -it mysql-scz bash
mysql -uroot -p
upbsczadmin
```

## Para agregar los datos al MongoDB
```bash
cd mongo

# Perfil Estudiantes
docker exec -it mongo-service mongoimport --authenticationDatabase admin --username root --password rootpassword --db upb --collection perfil_estudiantes --file /mongo-data/perfil_estudiantes.json --jsonArray

# Actividades Extracurriculares
docker exec -it mongo-service mongoimport --authenticationDatabase admin --username root --password rootpassword --db upb --collection actividades_extra --file /mongo-data/actividades.json --jsonArray

# Encuestas
docker exec -it mongo-service mongoimport --authenticationDatabase admin --username root --password rootpassword --db upb --collection encuestas --file /mongo-data/encuestas.json --jsonArray

# Preguntas
docker exec -it mongo-service mongoimport --authenticationDatabase admin --username root --password rootpassword --db upb --collection preguntas --file /mongo-data/preguntas.json --jsonArray

```