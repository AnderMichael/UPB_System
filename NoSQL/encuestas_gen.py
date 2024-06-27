import pandas as pd
import json
import random
from datetime import datetime, timedelta

# Cargar archivo CSV de estudiantes
csv_file_path = 'NoSQL/est_curso_mat.csv'  # Cambia esto por la ruta correcta a tu archivo CSV
data = pd.read_csv(csv_file_path)

# Cargar archivo JSON de preguntas
json_file_path = 'NoSQL/preguntas_def.json'  # Cambia esto por la ruta correcta a tu archivo JSON
with open(json_file_path, 'r') as file:
    preguntas = json.load(file)

# Obtener lista de estudiantes
estudiantes = []
for index, row in data.iterrows():
    estudiante = {
        "id_est": row["id"],
        "nombre": f"{row['nombre']} {row['apellido']}",
        "id_prof": row["profesor_id"],
        "id_mat": row["materia"]
    }
    estudiantes.append(estudiante)

# Respuestas predefinidas para preguntas abiertas
respuestas_abiertas = [
    "Creo que son muy importantes para el futuro.",
    "Me han ayudado mucho en mi aprendizaje.",
    "Son herramientas útiles, pero requieren más práctica.",
    "Considero que son esenciales en la formación profesional actual.",
    "Han mejorado mi eficiencia en el trabajo."
]

# Función para generar encuestas
def generar_encuestas(num_encuestas):
    encuestas = []
    for i in range(1, num_encuestas + 1):
        estudiante = random.choice(estudiantes)
        encuesta = {
            "_id": i,
            "estudiante": {
                "nombre": estudiante["nombre"],
                "id_est": estudiante["id_est"]
            },
            "id_profesor": estudiante["id_prof"],  # Asignar profesor_id aleatorio (1 a 10)
            "id_materia": estudiante["id_mat"],  # Asignar id_materia aleatorio (101 a 110)
            "preguntas": [],
            "fecha": (datetime.now() - timedelta(days=random.randint(0, 1825))).strftime("%Y-%m-%d")
        }
        for pregunta in preguntas:
            if pregunta["opciones"]:
                respuesta = random.choice(pregunta["opciones"])
            else:
                respuesta = random.choice(respuestas_abiertas)
            pregunta_respuesta = {
                "id": pregunta["_id"],
                "enunciado": pregunta["enunciado"],
                "opciones": pregunta["opciones"],
                "respuesta": respuesta
            }
            encuesta["preguntas"].append(pregunta_respuesta)
        encuestas.append(encuesta)
    return encuestas

# Generar encuestas
num_encuestas = 100  # Cambia esto por el número de encuestas que deseas generar
encuestas_generadas = generar_encuestas(num_encuestas)

# Guardar encuestas en un archivo JSON
with open('NoSQL/encuestas_def.json', 'w') as json_file:
    json.dump(encuestas_generadas, json_file, indent=4, ensure_ascii=False)

print(f'Se han generado y guardado {num_encuestas} encuestas en encuestas.json')
