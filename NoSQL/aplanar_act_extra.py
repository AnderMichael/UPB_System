import json
import pandas as pd

# Cargar el archivo JSON con las actividades
json_file_path = "NoSQL/actividades_def.json"
with open(json_file_path, "r") as json_file:
    actividades = json.load(json_file)

# Crear una lista para almacenar los datos aplanados
actividades_aplanadas = []

# Recorrer cada actividad y aplanar los datos
for actividad in actividades:
    actividad_id = actividad["id"]
    actividad_nombre = actividad["nombre"]
    actividad_descripcion = actividad["descripcion"]
    actividad_fecha = actividad["fecha"]
    actividad_categoria = actividad["categoria"]

    for estudiante in actividad["estudiantes"]:
        estudiante_nombre = estudiante["nombre_est"]
        estudiante_id = estudiante["id_est"]

        actividades_aplanadas.append(
            {
                "actividad_id": actividad_id,
                "actividad_nombre": actividad_nombre,
                "actividad_descripcion": actividad_descripcion,
                "actividad_fecha": actividad_fecha,
                "estudiante_nombre": estudiante_nombre,
                "estudiante_id": estudiante_id,
                "categoria": actividad_categoria,
            }
        )

# Crear un DataFrame con los datos aplanados
df_aplanado = pd.DataFrame(actividades_aplanadas)

# Guardar el DataFrame en un archivo CSV
csv_file_path = "./BigData/actividades_flat.csv"
df_aplanado.to_csv(csv_file_path, index=False)

print(f"Datos aplanados guardados en {csv_file_path}")
