
/*Inserindo uma nova turma.*/
INSERT INTO turma (nome) VALUES ('Frontend Forsoft Academy 2021.2');
INSERT INTO turma (nome) VALUES ('Backend Forsoft Academy 2021.2');
INSERT INTO turma (nome) VALUES ('Banco de Dados Forsoft Academy 2021.2');
INSERT INTO turma (nome) VALUES ('Dados Forsoft Academy 2021.2');

/*Mostrando todas as turmas.*/
SELECT * FROM turma;

/*Inserindo um novo cargo.*/
INSERT INTO cargo (nome) VALUES ('Aluno');
INSERT INTO cargo (nome) VALUES ('Professor Backend');
INSERT INTO cargo (nome) VALUES ('Professor Frontend');

/*Mostrando todas os cargos.*/
SELECT * FROM cargo;

/*Inserindo uma nova pessoa.*/
INSERT INTO pessoa (idCargo, nome, sobrenome, cpf, datanascimento, email, senha, status)
VALUES (1, 'Maria', 'Silva', '012.345.678-01', '1990-01-12', 'mariaSilva01@gmail.com', 'A@3x1kida', 1);

INSERT INTO pessoa (idCargo, nome, sobrenome, cpf, datanascimento, email, senha, status)
VALUES (1, 'Leila', 'Luei', '021.435.678-01', '1992-02-07', 'leilaluei02@gmail.com', 'LEIA@3x1kia', 1);

INSERT INTO pessoa (idCargo, nome, sobrenome, cpf, datanascimento, email, senha, status)
VALUES (2, 'Amanda', 'Ribas', '992.345.678-05', '1995-12-05', 'amandaRibas05@gmail.com', 'AMANDAA@3x1kiRIf', 1);

/*Mostrando todas as Pessoas.*/
SELECT * FROM pessoa;

/*Vinculando pessoa em turma.*/
INSERT INTO pessoa_turma (idTurma, idPessoa) VALUES (2, 1);
INSERT INTO pessoa_turma (idTurma, idPessoa) VALUES (2, 2);
INSERT INTO pessoa_turma (idTurma, idPessoa) VALUES (2, 3);

/*Mostrando todos os vinculos de turma*/
SELECT * FROM pessoa_turma;

/*Buscar todas as pessoas que fazem parte da turma Backend Forsoft Academy 2021.2*/
SELECT tu.id AS idTurma,
	   tu.nome AS nomeTurma,
       pe.id AS idPessoa,
	   pe.nome, pe.sobrenome, pe.cpf,
       pe.email, pe.senha,
       pe.datanascimento, ca.nome AS nomeCargo, pe.status
	FROM turma AS tu
    LEFT JOIN pessoa_turma AS petu
    ON tu.id = petu.idTurma
    LEFT JOIN pessoa AS pe
    ON pe.id = petu.idPessoa
    LEFT JOIN cargo as ca
    ON pe.idCargo = ca.id
    WHERE tu.id = 2 AND pe.status = TRUE;

/**Verificando se a pessoa com o email x e senha y existe */
SELECT id, idCargo, nome,
       sobrenome, cpf, datanascimento,
       email, senha, status 
FROM pessoa AS pe
WHERE email LIKE 'leilaluei02@gmail.com'
AND senha LIKE 'LEIA@3x1kia' 
AND status = TRUE;
