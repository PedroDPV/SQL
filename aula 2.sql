CREATE TABLE aluno
(
    id SERIAL,
    nome  VARCHAR(255),
    cpf CHAR(11),
    observacao TEXT,
    idade INTEGER,
    dinheiro NUMERIC(10,2),
    altura REAL,
    ativo BOOLEAN,
    data_nascimento DATE,
    hora_aula TIME,
    matriculado_em TIMESTAMP
);

SELECT * FROM aluno;

INSERT INTO aluno (
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_da_aula,
	matriculado_em
) 
	
	VALUES (
		'Pedro',
		'11182948405',
		'um texto qualquer grande demais , tipo o lorem ipsum bla bla bla aspodkaspodkaspodkasodaspkodaspoas',
		35,
		100.50,
		1.71,
		TRUE,
		'1994-07-24',
		'17:30:00',
		'2022-05-03 16:36:00'	
	)
	
SELECT *
	FROM aluno
	

UPDATE aluno 
	SET observacao = 'mayana eu te amo'
	WHERE id = 6;
	
	
DELETE FROM aluno
WHERE id = 5;

SELECT nome , idade , hora_da_aula AS hora_aula
	FROM aluno

SELECT * FROM aluno;

INSERT INTO aluno (nome) VALUES ('João de paula');
INSERT INTO aluno (nome) VALUES ('Mayana Maranhão');
INSERT INTO aluno (nome) VALUES ('Alberto Carlos');
INSERT INTO aluno (nome) VALUES ('Miguel Liberal');


UPDATE aluno
SET nome = 'Pedro Vasconcelos'
WHERE id = 6;