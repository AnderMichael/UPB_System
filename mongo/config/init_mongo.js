db.createUser({
    user: "root",
    pwd: "upbgeneraladmin",
    roles: [ { role: "root", db: "admin" }, { role: "root", db: "upb" } ],
});

use('upb');

db.createCollection("perfil_estudiantes");
db.createCollection("actividades_extra");
db.createCollection("encuestas");
db.createCollection("preguntas");