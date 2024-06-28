
// insert
db.perfil_estudiantes.insertOne(
{
        "_id": 501,
        "nombre": "Jaimito Ronsalez",
        "historial_academico": [
            {
                "nombre_curso": "Pediatría1",
                "calificacion": 99,
                "fecha": "2024-06-26"
            },
            {
                "nombre_curso": "Cálculo2",
                "calificacion": 77,
                "fecha": "2024-06-26"
            },
            {
                "nombre_curso": "Ing. Civil1",
                "calificacion": 84,
                "fecha": "2024-06-26"
            },
            {
                "nombre_curso": "Teología1",
                "calificacion": 61,
                "fecha": "2024-06-26"
            }
        ],
        "actividades_extra": [
            50
        ]
    }
)

// get
db.perfil_estudiante.find({_id:501})

//update
db.perfil_estudiante.updateOne({_id:1},{$set: {nombre: 'Jorge Morales Vega'}})

//Actualizar actividades extra
db.perfil_estudiantes.updateOne(
  { "_id": 1 },
  {
    $push: {
      "actividades_extra": 60
    }
  }
)

// Actualizar historial academico
db.perfil_estudiantes.updateOne(
  { "_id": 1 },
  {
    $push: {
      "historial_academico": {
        "nombre_curso": "Matemáticas",
        "calificacion": 85,
        "fecha": "2024-06-28"
      }
    }
  }
)
// delete
db.perfil_estudiante.deleteOne({_id: 501})

// obtener promedio
db.perfil_estudiantes.aggregate([
  {
    $match: { "_id": 1 }
  },
  {
    $unwind: "$historial_academico"
  },
  {
    $group: {
      _id: "$_id",
      promedio_calificacion: { $avg: "$historial_academico.calificacion" }
    }
  }
])

// obtener información de las actividades que el estudiante participo 
db.perfil_estudiantes.aggregate([
  {
    $match: { "_id": 1 }
  },
  {
    $lookup: {
      from: "actividades_extra",
      localField: "actividades_extra",
      foreignField: "_id",
      as: "detalles_actividades"
    }
  },
  {
    $project: {
      _id: 0,
      nombre: 1,
      detalles_actividades: {
        nombre: 1,
        descripcion: 1
      }
    }
  }
])