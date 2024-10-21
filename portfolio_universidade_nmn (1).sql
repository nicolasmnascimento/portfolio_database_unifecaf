-- Criação do banco de dados
CREATE DATABASE universidade_nmn;
USE universidade_nmn;

-- Criação das tabelas
CREATE TABLE tbl_alunos(
ra_alunos INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome_aluno VARCHAR (50) NOT NULL,
tel_aluno INT (50),
email_aluno VARCHAR (50),
curso VARCHAR (50) NOT NULL,
ocupacao VARCHAR (50));

CREATE TABLE tbl_cursos(
id_cursos INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome_curso VARCHAR (50) NOT NULL,
duracao_curso VARCHAR (50) NOT NULL);

CREATE TABLE tbl_professores(
ra_professores INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
prof_nomes VARCHAR (50) NOT NULL,
doc_prof INT NOT NULL,
email_prof VARCHAR (50),
tel_prof VARCHAR (50),
curso_prof VARCHAR (50));

CREATE TABLE tbl_classes (
id_classes INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
cursos VARCHAR  (50) NOT NULL,
professor VARCHAR (50),
alunos VARCHAR (50),
cronograma DATE);

CREATE TABLE tbl_notas(
ra_aluno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
fk_classes INT NOT NULL,
notas INT);

-- Adição de colunas
ALTER TABLE tbl_classes ADD COLUMN cursos INT;
ALTER TABLE tbl_classes ADD COLUMN professor INT;
ALTER TABLE tbl_classes ADD COLUMN alunos INT;
ALTER TABLE tbl_classes DROP COLUMN cronograma

-- Alteração de valores das colunas
ALTER TABLE tbl_alunos MODIFY tel_aluno VARCHAR(15);
ALTER TABLE tbl_professores MODIFY tel_prof VARCHAR(15);
ALTER TABLE tbl_cursos MODIFY duracao_curso DATE;


-- Chaves estrangeiras

-- tbl_classes
ALTER TABLE tbl_classes ADD CONSTRAINT FOREIGN KEY(alunos)REFERENCES tbl_alunos(ra_alunos);
ALTER TABLE tbl_classes ADD CONSTRAINT FOREIGN KEY(cursos)REFERENCES tbl_cursos(id_cursos);
ALTER TABLE tbl_classes ADD CONSTRAINT FOREIGN KEY(professor)REFERENCES tbl_professores(ra_professores);

-- tbl_notas
ALTER TABLE tbl_notas ADD CONSTRAINT FOREIGN KEY(fk_classes) REFERENCES tbl_classes(id_classes);

-- Adição de dados
INSERT INTO tbl_alunos (nome_aluno, tel_aluno, email_aluno, curso, ocupacao) 

VALUES
('Ana Clara', 3150218438, 'ana.clara@email.com', 'Administração', 'Empregado'),
('Paulo Ana', 8468913661, 'paulo.ana@email.com', 'Física', 'Empregado'),
('Carlos Paulo', 6055256566, 'carlos.paulo@email.com', 'Computação', 'Estagiário'),
('Clara Beatriz', 1003233940, 'clara.beatriz@email.com', 'Química', 'Autônomo'),
('Lucas João', 7689034211, 'lucas.joao@email.com', 'Medicina', 'Estudante'),
('Maria Clara', 8912375612, 'maria.clara@email.com', 'Direito', 'Trainee'),
('Bruno Carlos', 3214569870, 'bruno.carlos@email.com', 'Administração', 'Desempregado'),
('João Ana', 9856347211, 'joao.ana@email.com', 'Arquitetura', 'Autônomo'),
('Beatriz Paulo', 6745632134, 'beatriz.paulo@email.com', 'Enfermagem', 'Empreendedor'),
('Carlos Lucas', 4321098765, 'carlos.lucas@email.com', 'Física', 'Estudante'),
('Fernanda Clara', 7890123456, 'fernanda.clara@email.com', 'Medicina', 'Estagiário'),
('Lucas Bruno', 6549873210, 'lucas.bruno@email.com', 'Química', 'Empregado'),
('Ana Maria', 5647382910, 'ana.maria@email.com', 'Direito', 'Autônomo'),
('João Paulo', 9873201234, 'joao.paulo@email.com', 'Administração', 'Empreendedor'),
('Clara Fernanda', 6543219870, 'clara.fernanda@email.com', 'Arquitetura', 'Estudante'),
('Maria Beatriz', 8765432190, 'maria.beatriz@email.com', 'Engenharia', 'Trainee'),
('Bruno João', 7896543212, 'bruno.joao@email.com', 'Computação', 'Desempregado'),
('Lucas Carlos', 3212345678, 'lucas.carlos@email.com', 'Medicina', 'Autônomo'),
('Paulo Maria', 4567891230, 'paulo.maria@email.com', 'Química', 'Empreendedor'),
('Fernanda Ana', 1234567890, 'fernanda.ana@email.com', 'Engenharia', 'Estudante'),
('Carlos Bruno', 5432167890, 'carlos.bruno@email.com', 'Física', 'Estagiário'),
('Ana Paulo', 9875643210, 'ana.paulo@email.com', 'Arquitetura', 'Empregado'),
('Beatriz Lucas', 5647382911, 'beatriz.lucas@email.com', 'Direito', 'Desempregado'),
('João Fernanda', 6785432109, 'joao.fernanda@email.com', 'Administração', 'Autônomo'),
('Maria Carlos', 9873216540, 'maria.carlos@email.com', 'Computação', 'Empreendedor'),
('Clara João', 5432109876, 'clara.joao@email.com', 'Enfermagem', 'Estudante'),
('Lucas Beatriz', 7896541230, 'lucas.beatriz@email.com', 'Química', 'Estagiário'),
('Paulo Bruno', 5678932109, 'paulo.bruno@email.com', 'Administração', 'Empregado'),
('Carlos Ana', 9087654321, 'carlos.ana@email.com', 'Engenharia', 'Autônomo'),
('Bruno Maria', 8763210987, 'bruno.maria@email.com', 'Arquitetura', 'Empreendedor'),
('Ana João', 7890123765, 'ana.joao@email.com', 'Direito', 'Desempregado'),
('Fernanda Clara', 3210987654, 'fernanda.clara@email.com', 'Medicina', 'Estudante'),
('Clara Paulo', 6547893210, 'clara.paulo@email.com', 'Física', 'Empregado'),
('João Beatriz', 9876543210, 'joao.beatriz@email.com', 'Computação', 'Estagiário'),
('Lucas Maria', 4321987654, 'lucas.maria@email.com', 'Administração', 'Autônomo'),
('Paulo Fernanda', 3218765432, 'paulo.fernanda@email.com', 'Enfermagem', 'Empreendedor'),
('Bruno Lucas', 6789012345, 'bruno.lucas@email.com', 'Direito', 'Desempregado'),
('Carlos Beatriz', 7654321098, 'carlos.beatriz@email.com', 'Arquitetura', 'Estudante'),
('Ana Bruno', 9870123456, 'ana.bruno@email.com', 'Computação', 'Autônomo'),
('Fernanda João', 5432198765, 'fernanda.joao@email.com', 'Química', 'Empregado'),
('Clara Lucas', 3216785432, 'clara.lucas@email.com', 'Administração', 'Estagiário'),
('Maria Paulo', 7894321098, 'maria.paulo@email.com', 'Medicina', 'Empreendedor'),
('Beatriz Ana', 9873210987, 'beatriz.ana@email.com', 'Engenharia', 'Desempregado'),
('Lucas João', 5678904321, 'lucas.joao@email.com', 'Química', 'Estudante'),
('Paulo Carlos', 9876543120, 'paulo.carlos@email.com', 'Direito', 'Autônomo'),
('Bruno Fernanda', 4321098765, 'bruno.fernanda@email.com', 'Computação', 'Empregado'),
('Carlos Clara', 9875632109, 'carlos.clara@email.com', 'Arquitetura', 'Estagiário');

INSERT INTO tbl_cursos (nome_curso, duracao_curso) 

VALUES
('Engenharia', '2025-01-16'),
('Medicina', '2025-02-15'),
('Direito', '2025-03-17'),
('Administração', '2025-04-16'),
('Arquitetura', '2025-05-16'),
('Enfermagem', '2025-06-15'),
('Física', '2025-07-15'),
('Química', '2025-08-14'),
('Biologia', '2025-09-13'),
('Computação', '2025-10-13');

INSERT INTO tbl_professores (prof_nomes, doc_prof, email_prof, tel_prof, curso_prof) 

VALUES
('Carlos Souza', 123456789, 'carlos.souza@email.com', '9876543210', 'Engenharia'),
('Ana Silva', 987654321, 'ana.silva@email.com', '1234567890', 'Medicina'),
('Paulo Mendes', 456789123, 'paulo.mendes@email.com', '9873216540', 'Direito'),
('Fernanda Lima', 321654987, 'fernanda.lima@email.com', '6543219870', 'Administração'),
('João Santos', 654789321, 'joao.santos@email.com', '7890123456', 'Arquitetura'),
('Maria Oliveira', 789654123, 'maria.oliveira@email.com', '3219876543', 'Enfermagem'),
('Bruno Almeida', 123987654, 'bruno.almeida@email.com', '7896541230', 'Física'),
('Clara Martins', 987123654, 'clara.martins@email.com', '6541239870', 'Química'),
('Lucas Ferreira', 321456987, 'lucas.ferreira@email.com', '3216549870', 'Biologia'),
('Beatriz Silva', 789321654, 'beatriz.silva@email.com', '9876543211', 'Computação'),
('Carlos Rocha', 456123789, 'carlos.rocha@email.com', '1239876540', 'Engenharia'),
('Ana Costa', 987654123, 'ana.costa@email.com', '7893216540', 'Medicina'),
('Paulo Fernandes', 321789654, 'paulo.fernandes@email.com', '6549873210', 'Direito'),
('Fernanda Barros', 654123987, 'fernanda.barros@email.com', '3217896540', 'Administração'),
('João Ferreira', 987321654, 'joao.ferreira@email.com', '9873216541', 'Arquitetura');

SELECT * 
FROM tbl_classes

SELECT * FROM tbl_professores;
SELECT * FROM tbl_cursos;
SELECT * FROM tbl_alunos





