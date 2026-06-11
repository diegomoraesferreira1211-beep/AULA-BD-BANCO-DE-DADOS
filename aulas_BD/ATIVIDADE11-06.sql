CREATE TABLE aluno(
   	id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
	nm_aluno VARCHAR(100) NOT NULL,
    ra_aluno VARCHAR(15) NOT NULL UNIQUE, 
    nm_truma varchar(3),
    dt_matricula date NOT NULL
) 

INSERT INTO aluno(nm_aluno, ra_aluno, nm_truma, dt_matricula)
VALUES('diego', '12345', '3B', date('NOW'));

INSERT INTO aluno(nm_aluno, ra_aluno, nm_truma, dt_matricula)
VALUES('pinto', '12sp45', '1B', date('NOW'));

INSERT INTO aluno(nm_aluno, ra_aluno, nm_truma, dt_matricula)
VALUES('gorso', '1223e5', '2B', date('NOW'));

INSERT INTO aluno(nm_aluno, ra_aluno, nm_truma, dt_matricula)
VALUES('e', '1243245', '2D', date('NOW'));

INSERT INTO aluno(nm_aluno, ra_aluno, nm_truma, dt_matricula)
VALUES('lindo', '4321', '1A', date('now'));

WHERE dt_matricula = data('now')

SELECT nm_aluno, nm_truma FROM aluno

SELECT * FROM aluno
DROP TABLE aluno