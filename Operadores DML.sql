-- ddl para criação da tabela de execícios



CREATE TABLE funcinarios
(
id int NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
salario DECIMAL(10,2),
setor VARCHAR(30),
primary KEY (id)
);



-- exemplo mde select
SELECT id,nome,salario,setor AS depto
FROM funcionarios;


-- dml select
-- exemplo select
SELECT *
FROM funcionarios;

-- dml insert
INSERT INTO funcionarios (nome,salario,setor) VALUES
('Joao', 1000, ''), ('Jose', 2000, ''), ('Alexandre', 3000, '');
-- ou
INSERT INTO funcionarios (nome,salario) VALUES ('Pedro', 1000);
INSERT INTO funcionarios (nome,salario) VALUES ('Cleiton', 1080);



-- simulando erro
INSERT INTO funcionarios (nome,salario) VALUES ('Pedro', 'asasa');


-- dml update
UPDATE funcionarios SET salario = 1500
WHERE id=2;


-- ou aumento de 50%sobre o salário atual
UPDATE funcionarios SET salario=salario*1.5
WHERE id='2';

-- exemplo de update com mais de um campo
UPDATE funcionarios SET salario=salario*1.5,setor='TI'
WHERE id<>'1';

-- dmr delet
DELETE
FROM funcionarios
WHERE id='1';
