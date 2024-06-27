-- Tabla de dimensión tiempo
CREATE TABLE dim_time (
    fecha DATE PRIMARY KEY,
    año INT,
    mes INT,
    dia INT
);

-- Tabla de dimensión profesor
CREATE TABLE dim_profesor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    carrera VARCHAR(100)
);

-- Tabla de dimensión estudiante
CREATE TABLE dim_estudiante (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    direccion VARCHAR(100),
    carrera VARCHAR(100)
);

-- Tabla de dimensión curso
CREATE TABLE dim_curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    creditos INT
);

-- Tabla de dimensión encuesta
CREATE TABLE dim_encuesta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enunciado TEXT,
    respuesta INT
);

-- Tabla de hechos recomendaciones calidad
CREATE TABLE fact_recomendaciones_calidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    encuesta_id INT,
    curso_id INT,
    profesor_id INT,
    fecha_id DATE,
    FOREIGN KEY (estudiante_id) REFERENCES dim_estudiante(id),
    FOREIGN KEY (encuesta_id) REFERENCES dim_encuesta(id),
    FOREIGN KEY (curso_id) REFERENCES dim_curso(id),
    FOREIGN KEY (profesor_id) REFERENCES dim_profesor(id),
    FOREIGN KEY (fecha_id) REFERENCES dim_time(fecha)
);
