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
    día INT,
);

CREATE TABLE dim_profesor (
    profesor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    correo VARCHAR(255),
    carrera VARCHAR(255)
);

CREATE TABLE dim_curso (
    curso_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    créditos INT
);

CREATE TABLE fact_personalizacion_aprendizaje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    curso_id INT,
    profesor_id INT,
    fecha DATE,
    FOREIGN KEY (estudiante_id) REFERENCES dim_estudiante(estudiante_id),
    FOREIGN KEY (curso_id) REFERENCES dim_curso(curso_id),
    FOREIGN KEY (profesor_id) REFERENCES dim_profesor(profesor_id),
    FOREIGN KEY (fecha) REFERENCES dim_time(fecha)
);
