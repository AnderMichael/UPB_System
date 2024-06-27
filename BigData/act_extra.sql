CREATE TABLE dim_estudiante (
    estudiante_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    correo VARCHAR(255),
    dirección VARCHAR(255),
    carrera VARCHAR(255)
);

CREATE TABLE dim_time (
    fecha DATE PRIMARY KEY,
    año INT,
    mes INT,
    día INT
);

CREATE TABLE dim_actividad_extracurricular (
    actividad_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT
);

CREATE TABLE fact_analisis_genero_actividad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    sexo VARCHAR(50),
    actividad_id INT,
    fecha DATE,
    FOREIGN KEY (estudiante_id) REFERENCES dim_estudiante(estudiante_id),
    FOREIGN KEY (actividad_id) REFERENCES dim_actividad_extracurricular(actividad_id),
    FOREIGN KEY (fecha) REFERENCES dim_time(fecha)
);
