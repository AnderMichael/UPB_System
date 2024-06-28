use upb;

// Insertar un nuevo elemento en la colección
db.encuestas.insertOne({
    "_id": 200,
    "id_est": 30,
    "id_profesor": 410,
    "id_materia": 31,
    "preguntas": [
        {
            "id": 1,
            "enunciado": "Las herramientas de I.A. me ayudaron a resolver mis dudas de manera efectiva en esta materia.",
            "opciones": [1, 2, 3, 4],
            "respuesta": 2
        },
        {
            "id": 2,
            "enunciado": "Al utilizar herramientas de I.A. en esta materia, pude mejorar mi comprensión del material del curso.",
            "opciones": [1, 2, 3, 4],
            "respuesta": 2
        },
        {
            "id": 42,
            "enunciado": "¿Qué opinas sobre la metodología de enseñanza utilizada por el docente?",
            "opciones": [],
            "respuesta": "Considero que son esenciales en la formación profesional actual."
        }
    ],
    "fecha": "2020-01-19"
});

// Consultar por las encuestas
db.encuestas.find();

// Eliminar una encuesta
db.encuestas.deleteOne({ "_id": 200 });

//Encuestas por profesor
db.encuestas.aggregate([
    { $group: { _id: {id_profesor:"$id_profesor"}, count: { $sum: 1 } } },
    { $sort: { count: -1 } },
    {
       $project: {
                _id: 0,
                id_profesor: "$_id.id_profesor",
                count: 1
       }
    }
]);

// Obtener comentarios -> Materia - Profesor
db.encuestas.aggregate([
    { $unwind: "$preguntas" },
    {
        $match: {
            "preguntas.opciones": { $eq: [] }
        }
    },
    {
        $group: {
            _id: {
                id_profesor: "$id_profesor",
                id_materia: "$id_materia"
            },
            comentarios: { $push: "$preguntas.respuesta" }
        }
    },
    {
        $project: {
            _id: 0,
            id_profesor: "$_id.id_profesor",
            id_materia: "$_id.id_materia",
            comentarios: 1
        }
    }
]);

// Obtener promedios de evaluaciones -> Materia - Profesor
db.encuestas.aggregate([
    { $unwind: "$preguntas" },
    {
        $match: {
            "preguntas.opciones": { $ne: [] }
        }
    },
    {
        $group: {
            _id: {
                id_profesor: "$id_profesor",
                id_materia: "$id_materia"
            },
            promedio_respuestas: { $avg: "$preguntas.respuesta" }
        }
    },
    {
        $project: {
            _id: 0,
            id_profesor: "$_id.id_profesor",
            id_materia: "$_id.id_materia",
            promedio_respuestas: { $multiply: ["$promedio_respuestas", 25] }
        }
    },
    { $sort: { promedio_respuestas: -1 } },
]);

// Obtener promedios generales por pregunta
db.encuestas.aggregate([
    { $unwind: "$preguntas" },
    {
        $match: {
            "preguntas.opciones": { $ne: [] }
        }
    },
    {
        $group: {
            _id: "$preguntas.id",
            enunciado: { $first: "$preguntas.enunciado" },
            promedio_respuestas: { $avg: "$preguntas.respuesta" }
        }
    },
    {
        $project: {
            _id: 0,
            id_pregunta: "$_id",
            enunciado: 1,
            promedio_respuestas: { $multiply: ["$promedio_respuestas", 25] }
        }
    },
    { $sort: { id_pregunta: 1 } }
]);

// Evaluaciones generales para cada profesor
db.encuestas.aggregate([
    { $unwind: "$preguntas" },
    {
        $match: {
            "preguntas.opciones": { $ne: [] },
            "preguntas.id": { $gte: 33, $lte: 42 }
        }
    },
    {
        $group: {
            _id: "$id_profesor",
            promedio_respuestas: { $avg: "$preguntas.respuesta" }
        }
    },
    {
        $project: {
            _id: 0,
            id_profesor: "$_id",
            promedio_respuestas: { $multiply: ["$promedio_respuestas", 25] }
        }
    },
    { $sort: { promedio_respuestas: -1 } }
]);

// Evaluación general para un profesor en específico
db.encuestas.aggregate([
    { $unwind: "$preguntas" },
    {
        $match: {
            "preguntas.opciones": { $ne: [] },
            "preguntas.id": { $gte: 33, $lte: 42 },
            "id_profesor": 410
        }
    },
    {
        $group: {
            _id: "$id_profesor",
            promedio_respuestas: { $avg: "$preguntas.respuesta" }
        }
    },
    {
        $project: {
            _id: 0,
            id_profesor: "$_id",
            promedio_respuestas: { $multiply: ["$promedio_respuestas", 25] }
        }
    }
]);

// Evaluaciones generales para cada materia
db.encuestas.aggregate([
    { $unwind: "$preguntas" },
    {
        $match: {
            "preguntas.opciones": { $ne: [] },
            "preguntas.id": { $gte: 38, $lte: 42 }
        }
    },
    {
        $group: {
            _id: "$id_materia",
            promedio_respuestas: { $avg: "$preguntas.respuesta" }
        }
    },
    {
        $project: {
            _id: 0,
            id_materia: "$_id",
            promedio_respuestas: { $multiply: ["$promedio_respuestas", 25] }
        }
    },
    { $sort: { promedio_respuestas: -1 } }
]);

// Evaluación general para una materia específica
db.encuestas.aggregate([
    { $unwind: "$preguntas" },
    {
        $match: {
            "preguntas.opciones": { $ne: [] },
            "preguntas.id": { $gte: 38, $lte: 42 },
            "id_materia": 26
        }
    },
    {
        $group: {
            _id: "$id_materia",
            promedio_respuestas: { $avg: "$preguntas.respuesta" }
        }
    },
    {
        $project: {
            _id: 0,
            id_materia: "$_id",
            promedio_respuestas: { $multiply: ["$promedio_respuestas", 25] }
        }
    }
]);


// Verificacion de respuestas únicas de un estudiante por materia y profesor
db.encuestas.aggregate([
    {
        $group: {
            _id: { id_est: "$id_est", id_profesor: "$id_profesor", id_materia: "$id_materia" },
            count: { $sum: 1 },
            encuestas: { $push: "$$ROOT" }
        }
    },
    { $sort: { count: -1 } },
    {
        $project: {
            _id: 0,
            id_est: "$_id.id_est",
            id_profesor: "$_id.id_profesor",
            id_materia: "$_id.id_materia",
            count: 1,
            encuestas: 1,
            status: {
                $cond: { if: { $eq: ["$count", 1] }, then: "normal", else: "anomalía" }
            }
        }
    },
]);

