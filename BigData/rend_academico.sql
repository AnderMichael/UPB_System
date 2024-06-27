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

CREATE TABLE dim_curso (
    curso_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    créditos INT,
    nombre_profesor VARCHAR(255)
);

CREATE TABLE fact_rendimiento_academico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    curso_id INT,
    calificación DECIMAL(5, 2),
    fecha DATE,
    FOREIGN KEY (estudiante_id) REFERENCES dim_estudiante(estudiante_id),
    FOREIGN KEY (curso_id) REFERENCES dim_curso(curso_id),
    FOREIGN KEY (fecha) REFERENCES dim_time(fecha)
);
