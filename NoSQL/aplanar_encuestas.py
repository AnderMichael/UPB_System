import pandas as pd
import json

# Cargar el archivo JSON de encuestas
json_file_path = 'NoSQL/encuestas.json'  # Cambia esto por la ruta correcta a tu archivo JSON
with open(json_file_path, 'r') as file:
    encuestas = json.load(file)

# Aplanar los datos de las encuestas
encuestas_aplanadas = []

for encuesta in encuestas:
    encuesta_base = {
        "encuesta_id": encuesta["id"],
        "estudiante_id": encuesta["estudiante"]["id_est"],
        "estudiante_nombre": encuesta["estudiante"]["nombre"],
        "id_profesor": encuesta["id_profesor"],
        "id_materia": encuesta["id_materia"],
        "fecha": encuesta["fecha"]
    }
    for pregunta in encuesta["preguntas"]:
        encuesta_detalle = {
            "pregunta_id": pregunta["id"],
            "enunciado": pregunta["enunciado"],
            "respuesta": pregunta["respuesta"]
        }
        # Combinar los datos base de la encuesta con los detalles de cada pregunta
        encuesta_completa = {**encuesta_base, **encuesta_detalle}
        encuestas_aplanadas.append(encuesta_completa)

# Convertir los datos a un DataFrame de pandas
df_encuestas = pd.DataFrame(encuestas_aplanadas)

# Guardar los datos aplanados en un archivo CSV
csv_file_path = 'BigData/encuestas_flat.csv'
df_encuestas.to_csv(csv_file_path, index=False, encoding='utf-8-sig')

print(f'Se han guardado los datos aplanados en {csv_file_path}')
