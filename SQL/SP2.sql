set autocommit = 0;
DELIMITER //
CREATE PROCEDURE AsignarCursoAProfesor(
    IN p_curso_id INT,
    IN p_profesor_id INT
)
BEGIN
    DECLARE profesor_existe INT;
    SELECT COUNT(*) INTO profesor_existe FROM Profesores WHERE id = p_profesor_id;
    IF profesor_existe > 0 THEN
        START TRANSACTION;
        UPDATE Cursos SET profesor_id = p_profesor_id WHERE id = p_curso_id;
        COMMIT;
    ELSE
        rollback;
    END IF;
END //
DELIMITER ;
CALL AsignarCursoAProfesor(3,3);

-- 
DELIMITER //
CREATE PROCEDURE AsignarCursoAEstudiante(
    IN p_curso_id INT,
    IN p_estudiante_id INT
)
BEGIN
    DECLARE estudiante_existe INT;
    SELECT COUNT(*) INTO estudiante_existe FROM Estudiantes WHERE id = p_estudiante_id;
    IF estudiante_existe > 0 THEN
        START TRANSACTION;
        INSERT INTO Curso_Estudiante (curso_id, estudiante_id) VALUES (p_curso_id, p_estudiante_id);
        COMMIT;
    ELSE
       rollback;
    END IF;
END //
DELIMITER ;
CALL AsignarCursoAEstudiante(3,3);