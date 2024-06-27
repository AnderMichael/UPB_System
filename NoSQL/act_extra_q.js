// Para el CRUD de actividades extracurriculares
use upb;

// Crear una actividad extracurricular
db.actividades_extra.insertOne({
    "_id": 100,
    "nombre": "Grupo de Teatro",
    "descripcion": "Un grupo que realiza obras de teatro.",
    "estudiantes": [
        { "nombre_est": "Jorge Morales", "id_est": 1 },
        { "nombre_est": "Marta Sanchez", "id_est": 4 },
        { "nombre_est": "Carlos Ortega", "id_est": 7 },
        { "nombre_est": "Miguel Perez", "id_est": 10 },
        { "nombre_est": "Carlos Ortega", "id_est": 13 },
        { "nombre_est": "Ana Suarez", "id_est": 16 },
        { "nombre_est": "Roberto Perez", "id_est": 19 },
        { "nombre_est": "Maria Suarez", "id_est": 22 },
        { "nombre_est": "Miguel Suarez", "id_est": 25 },
        { "nombre_est": "Maria Gonzalez", "id_est": 28 }
    ],
    "fecha": "2024-06-22",
    "categoria": "Cultural"
});

// Encontrar una actividad
db.actividades_extra.find({ "_id": 100 });
db.actividades_extra.find();
// Actualizar una actividad
db.actividades_extra.updateOne(
    { "_id": 100 },
    { $set: { "nombre": "Nuevo Grupo de Teatro ESTRELLARTE" } }
);

////// Añadir más estudiantes a una actividad
db.actividades_extra.updateOne(
    { "_id": 100 },
    {
        $push: {
            "estudiantes": {
                $each: [
                    { "nombre_est": "Ander Cayllan", "id_est": 63428 },
                    { "nombre_est": "Jose Carrasco", "id_est": 63003 }
                ]
            }
        }
    }
);

//////// Eliminar estudiantes
db.actividades_extra.updateOne(
    { "_id": 100 },
    {
        $pull: {
            "estudiantes": { "id_est": 63003 }
        }
    }
);

// Eliminar una actividad
db.actividades_extra.deleteOne({ "_id": 100 });

// Consultar por categorias y actividades
db.actividades_extra.aggregate([
    {
        $group: {
            _id: "$categoria",
            count: { $sum: 1 }
        }
    },
    {
        $sort: { count: -1 }  // Ordena los resultados por el conteo de manera descendente
    }
]);

//// Ordenar estudiantes por numero de eventos
db.actividades_extra.aggregate([
    { $unwind: "$estudiantes" },
    {
        $group: {
            _id: "$estudiantes.id_est",
            nombre: { $first: "$estudiantes.nombre_est" },
            participaciones: { $sum: 1 }
        }
    },
    { $sort: { participaciones: -1 } }
]);

///// Filtrar eventos por año
db.actividades_extra.aggregate([
    {
        $match: {
            $expr: {
                $eq: [{ $year: { $dateFromString: { dateString: "$fecha" } } }, 2020]
            }
        }
    }
]);
