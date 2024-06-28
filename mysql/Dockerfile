# Usa una imagen base de MySQL desde Docker Hub
FROM mysql:8.0

# Establecer la contraseña para el usuario root de MySQL
ENV MYSQL_ROOT_PASSWORD=upbgeneraladmin

# Opcional: Establecer el nombre de la base de datos, usuario y contraseña
ENV MYSQL_USER=replication_user
ENV MYSQL_PASSWORD=super_secure_replication_password

# Copia el archivo SQL exportado dentro del contenedor
COPY dump_upb.sql /docker-entrypoint-initdb.d/

# Opcional: si necesitas configuraciones adicionales, puedes añadirlas aquí
EXPOSE 3306
# Cuando el contenedor se inicie, se ejecutará automáticamente el SQL
# dump almacenado en /docker-entrypoint-initdb.d/ por el contenedor de MySQL

# El contenedor se iniciará automáticamente con el servicio de MySQL