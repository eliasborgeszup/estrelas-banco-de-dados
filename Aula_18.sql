-- CREATE --
 CREATE DATABASE banco_estrelas;

CREATE TABLE banco_estrelas.cidade(
	cep VARCHAR(8) NOT NULL PRIMARY KEY,
	nome VARCHAR(45) UNIQUE NOT NULL,
    numero_habitantes INT NOT NULL,
    capital BOOLEAN NOT NULL,
    estado VARCHAR(2) NOT NULL,
    renda_per_capita DECIMAL(9, 3) NOT NULL,
    data_fundacao DATE NOT NULL
);

CREATE TABLE banco_estrelas.estado(
	sigla VARCHAR(2) NOT NULL PRIMARY KEY,
    nome VARCHAR(45) UNIQUE NOT NULL
);

-- INSERT --
INSERT INTO banco_estrelas.cidade (cep, nome, numero_habitantes, capital, estado, renda_per_capita, data_fundacao)
VALUES ('38720000', 'Lagoa Formosa', 18111, false, 'MG', 9134.39, 19621230);

INSERT INTO banco_estrelas.cidade
VALUES ('38710000', 'Patos de Minas', 18111, false, 'MG', 9134.39, 19700115);

INSERT INTO banco_estrelas.cidade
VALUES ('38730000', 'Uberlandia', 584.102, false, 'MG', 100034.39, 19700830);

INSERT INTO banco_estrelas.cidade
VALUES ('38740000', 'Belo Horizonte', 8984.102, false, 'MG', 912134.39, 19700520);

INSERT INTO banco_estrelas.cidade
VALUES ('38750000', 'Campina Grande do Sul', 12181.11, false, 'PR', 11134.39, 19700115);

INSERT INTO banco_estrelas.estado (sigla, nome)
VALUES ('MG', 'Minas Gerais');

INSERT INTO banco_estrelas.estado
VALUES ('PR', 'Parana');

-- Sul
INSERT INTO banco_estrelas.estado (sigla, nome, regiao)
VALUES ('SC', 'Santa Catarina', 'Sul'), ('RS', 'Rio Grande do Sul', 'Sul');

-- Sudeste
INSERT INTO banco_estrelas.estado
VALUES ('SP', 'São Paulo', 'Sudeste'), ('RJ', 'Rio de Janeiro', 'Sudeste'), ('ES', 'Espirito Santo', 'Sudeste');

-- Centro Oeste
INSERT INTO banco_estrelas.estado
VALUES ('MS', 'Mato Grosso do Sul', 'Centro-Oeste'), ('MT', 'Mato Grosso', 'Centro-Oeste'), 
('GO', 'Goiás', 'Centro-Oeste'), ('DF', 'Distrito Federal', 'Centro-Oeste');

-- Nordeste
INSERT INTO banco_estrelas.estado
VALUES ('BA', 'Bahia', 'Nordeste'), ('PI', 'Piauí', 'Nordeste'), 
('SE', 'Sergipe', 'Nordeste'), ('AL', 'Alagoas', 'Nordeste'),
('PE', 'Pernambuco', 'Nordeste'), ('PB', 'Paraíba', 'Nordeste'),
('RN', 'Rio Grande do Norte', 'Nordeste'), ('CA', 'Ceará', 'Nordeste'),
('ME', 'Maranhão', 'Nordeste');

-- Norte
INSERT INTO banco_estrelas.estado
VALUES ('TO', 'Tocantins', 'Norte'), ('RO', 'Rondônia', 'Norte'), 
('AC', 'Acre', 'Norte'), ('AM', 'Amazonas', 'Norte'),
('PA', 'Pará', 'Norte'), ('AP', 'Amapá', 'Norte'),
('RR', 'Roraíma', 'Norte');

-- Capitais 
INSERT INTO banco_estrelas.cidade (cep, nome, numero_habitantes, capital, estado, renda_per_capita, data_fundacao)
VALUES ('38390132', 'Fortaleza', 584.102, false, 'CE', 100034.39, 19700830),
('38380631', 'Vitória', 584.102, false, 'ES', 100034.39, 19700830),
('38370131', 'Goiânia', 584.102, false, 'GO', 100034.39, 19700830),
('38360237', 'São Luís', 584.102, false, 'MA', 100034.39, 19700830),
('38350236', 'Cuiabá', 584.102, false, 'MT', 100034.39, 19700830),
('38120235', 'Campo Grande', 584.102, false, 'MS', 100034.39, 19700830),
('38340234', 'Belém', 584.102, false, 'PA', 100034.39, 19700830),
('38340233', 'João Pessoa', 584.102, false, 'PB', 100034.39, 19700830),
('38340232', 'Curitiba', 584.102, false, 'PR', 100034.39, 19700830),
('38340231', 'Recife', 584.102, false, 'PE', 100034.39, 19700830),
('38233000', 'Teresina', 584.102, false, 'PI', 100034.39, 19700830),
('38232000', 'Rio de Janeiro', 584.102, false, 'RJ', 100034.39, 19700830),
('32310000', 'Natal', 584.102, false, 'RN', 100034.39, 19700830),
('33290000', 'Porto Alegre', 584.102, false, 'RS', 100034.39, 19700830),
('33280000', 'Porto Velho', 584.102, false, 'RO', 100034.39, 19700830),
('33270000', 'Boa Vista', 584.102, false, 'RR', 100034.39, 19700830),
('33260000', 'Florianópolis', 584.102, false, 'SC', 100034.39, 19700830),
('33250000', 'São Paulo', 584.102, false, 'SP', 100034.39, 19700830),
('33230000', 'Aracaju', 584.102, false, 'SE', 100034.39, 19700830),
('33220000', 'Palmas', 584.102, false, 'TO', 100034.39, 19700830),
('33210000', 'Brasília ', 584.102, false, 'DF', 100034.39, 19700830),
('38310000', 'Salvador', 584.102, false, 'BA', 100034.39, 19700830),
('38320000', 'Manaus', 584.102, false, 'AM', 100034.39, 19700830),
('38131000', 'Macapá', 584.102, false, 'AP', 100034.39, 19700830),
('38110000', 'Rio Branco', 18111, false, 'AC', 9134.39, 19621230),
('38330000', 'Maceió', 584.102, false, 'AL', 100034.39, 19700830);

-- UPDATE --
UPDATE banco_estrelas.cidade 
SET renda_per_capita = 19.922
WHERE cep = "38720000";

UPDATE banco_estrelas.cidade 
SET renda_per_capita = 642.512
WHERE cep = "38730000";

UPDATE banco_estrelas.estado 
SET regiao = 'Sudeste'
WHERE sigla = 'MG';

UPDATE banco_estrelas.estado 
SET regiao = 'Sul'
WHERE sigla = 'PR';

UPDATE banco_estrelas.estado 
SET sigla = 'CE'
WHERE sigla = 'CA';

UPDATE banco_estrelas.estado 
SET sigla = 'MA'
WHERE sigla = 'ME';

UPDATE banco_estrelas.cidade 
SET capital = true
WHERE cep IN ("32310000");

UPDATE banco_estrelas.cidade 
SET capital = true
WHERE cep IN ("33210000", "38390132"); 

UPDATE banco_estrelas.cidade 
SET capital = true
WHERE cep IN ("33220000", "33230000", "33250000", "33260000", 
"33270000", "33280000", "33290000", "38110000", "38120235",
"38131000", "38232000", "38233000", "38310000", "38320000",
"38330000", "38340231", "38340232", "38340233", "38340234",
"38350236", "38360237", "38370131", "38380631", "38390132",
"38740000");

-- DELETE --
DELETE FROM banco_estrelas.cidade WHERE cep = '38721000';

-- ALTER --
ALTER TABLE banco_estrelas.cidade
ADD CONSTRAINT estado_fk
FOREIGN KEY (estado)
REFERENCES banco_estrelas.estado (sigla)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE banco_estrelas.estado 
ADD COLUMN regiao VARCHAR(15) NOT NULL AFTER nome;

ALTER TABLE banco_estrelas.estado MODIFY COLUMN regiao TEXT; 

-- SELECT --
SELECT * FROM banco_estrelas.cidade;

SELECT * FROM banco_estrelas.estado;