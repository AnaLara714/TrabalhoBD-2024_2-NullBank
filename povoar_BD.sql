use `Equipe498866`;


INSERT INTO `cliente`(`cpf`, `nome_comp`, `rg`, `orgao_emissor`, `uf`, `data_nasc`) VALUES 
					 ('12345678901', 'João Silva', 'MG123456', 'SSP', 'MG', '1985-06-15'),
					 ('98765432100', 'Maria Oliveira', 'SP987654', 'SSP', 'SP', '1990-09-25'),
                     ('12345678902', 'Carlos Ferreira', 'MG654321', 'SSP', 'MG', '1980-05-10'),
					 ('98765432101', 'Ana Lima', 'SP456789', 'SSP', 'SP', '1992-03-22'),
					 ('11223344556', 'Fernando Souza', 'RJ112233', 'SSP', 'RJ', '1988-07-15'),
                     ('22334455667', 'Beatriz Rocha', 'BA223344', 'SSP', 'BA', '1995-12-30'),
					 ('33445566778', 'Lucas Martins', 'PR334455', 'SSP', 'PR', '1993-08-05'),
					 ('44556677889', 'Camila Almeida', 'SC445566', 'SSP', 'SC', '1990-09-25'),
                     ('55667788990', 'Gabriel Santos', 'RS556677', 'SSP', 'RS', '1984-11-12'),
                     ('66778899001', 'Mariana Costa', 'PE667788', 'SSP', 'PE', '1987-06-08'),
                     ('77889900112', 'Ricardo Oliveira', 'GO778899', 'SSP', 'GO', '1985-01-14'),
                     ('88990011223', 'Patrícia Mendes', 'CE889900', 'SSP', 'CE', '1991-04-17');

INSERT INTO `endereco`( `cliente_cpf`, `tipo_log`, `rua`, `num`, `bairro`, `cep`, `cidade`, `estado`) VALUES 
					 ( '12345678901', 'Rua', 'Av. Brasil', 100, 'Centro', '12345678', 'Belo Horizonte', 'MG'),
					 ( '98765432100', 'Rua', 'Rua das Flores', 50, 'Jardins', '87654321', 'São Paulo', 'SP'),
                     ('12345678902', 'Rua', 'Av. Amazonas', 200, 'Centro', '30110000', 'Belo Horizonte', 'MG'),
                     ('98765432101', 'Rua', 'Rua Augusta', 120, 'Bela Vista', '01311000', 'São Paulo', 'SP'),
                     ('11223344556', 'Rua', 'Av. Atlântica', 550, 'Copacabana', '22021000', 'Rio de Janeiro', 'RJ'),
					 ('22334455667', 'Rua', 'Rua das Laranjeiras', 75, 'Centro', '40050000', 'Salvador', 'BA'),
                     ('33445566778', 'Avenida', 'Av. Paraná', 300, 'Centro', '80010000', 'Curitiba', 'PR'),
                     ('44556677889', 'Rua', 'Rua das Flores', 90, 'Centro', '88020000', 'Florianópolis', 'SC'),
                     ('55667788990', 'Avenida', 'Av. Borges de Medeiros', 250, 'Centro', '90020000', 'Porto Alegre', 'RS'),
                     ('66778899001', 'Rua', 'Rua do Sol', 85, 'Boa Vista', '50030000', 'Recife', 'PE'),
                     ('77889900112', 'Rua', 'Rua das Palmeiras', 150, 'Setor Oeste', '74010000', 'Goiânia', 'GO'),
                     ('88990011223', 'Avenida', 'Av. Beira Mar', 400, 'Meireles', '60165000', 'Fortaleza', 'CE');

INSERT INTO `telefone`( `cliente_cpf`, `telefone`, `tipo_tel`) VALUES 
					  ( '12345678901', '31999999999', 'Empresarial'),
					  ( '98765432100', '11988888888', 'Pessoal'),
                      ('12345678902', '31988887777', 'Pessoal'),
                      ('98765432101', '11977776666', 'Pessoal'),
                      ('11223344556', '21966665555', 'Empresarial'),
                      ('22334455667', '71955554444', 'Pessoal'),
                      ('33445566778', '41944443333', 'Empresarial'),
                      ('44556677889', '48933332222', 'Pessoal'),
                      ('55667788990', '51922221111', 'Pessoal'),
                      ('66778899001', '81911110000', 'Empresarial'),
                      ('77889900112', '62999998888', 'Pessoal'),
                      ('88990011223', '85988887777', 'Pessoal');
                      
INSERT INTO `email`(`cliente_cpf`, `email`, `tipo_email`) VALUES 
				   ('12345678901', 'joao@email.com', 'Pessoal'),
				   ('98765432100', 'maria@email.com', 'Pessoal'),
                   ('12345678902', 'carlos@email.com', 'Pessoal'),
                   ('98765432101', 'ana@email.com', 'Pessoal'),
                   ('11223344556', 'fernando@email.com', 'Empresarial'),
                   ('22334455667', 'beatriz@email.com', 'Pessoal'),
                   ('33445566778', 'lucas@email.com', 'Empresarial'),
                   ('44556677889', 'camila@email.com', 'Pessoal'),
                   ('55667788990', 'gabriel@email.com', 'Pessoal'),
                   ('66778899001', 'mariana@email.com', 'Empresarial'),
                   ('77889900112', 'ricardo@email.com', 'Pessoal'),
				   ('88990011223', 'patricia@email.com', 'Pessoal');
                        
INSERT INTO `cliente_has_conta`(`cliente_cpf`, `conta_num_conta`) VALUES 
					           ('12345678901', 1),
							   ('98765432100', 2),
                               ('12345678902', 3),
                               ('98765432101', 4),
                               ('11223344556', 5),
                               ('22334455667', 6),
							   ('33445566778', 7),
                               ('44556677889', 8),
                               ('55667788990', 9),
							   ('66778899001', 10),
                               ('77889900112', 11),
                               ('88990011223', 12);

INSERT INTO `conta`(`saldo`, `senha`, `tipo_conta`, `juros`, `limite_credito`, `data_aniversário`, `gerente_matricula`) VALUES 
				   (2500.50, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.5, 1000.00, '2025-02-10', 1),
				   (5000.75, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.2, 2000.00, '2025-02-11', 2),
				   (3200.75, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.1, 1500.00, '2025-03-10', 1),
				   (4800.50, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.3, 2500.00, '2025-03-11', 2),
                   (1500.30, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.0, 1200.00, '2025-03-12', 1),
				   (3600.00, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.4, 1800.00, '2025-03-13', 2),
                   (2750.90, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.2, 1600.00, '2025-03-14', 1),
                   (5200.60, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.5, 3000.00, '2025-03-15', 2),
				   (2200.80, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.3, 1400.00, '2025-03-16', 1),
                   (4000.45, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.6, 2100.00, '2025-03-17', 2),
                   (3100.55, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.4, 1900.00, '2025-03-18', 1),
                   (2900.75, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.7, 2300.00, '2025-03-19', 2);

INSERT INTO `funcionario`(`num_ag`, `nome_comp`, `senha`, `senha`, `endereço`, `cidade`, `cargo`, `genero`, `data_nasc`, `salario`) VALUES 
						 (1, 'Carlos Almeida', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua A, 100', 'Belo Horizonte', 'Gerente', 'M', '1975-04-20', 8000.00),
						 (2, 'Ana Souza', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua B, 200', 'São Paulo', 'Caixa', 'F', '1988-07-10', 3000.00),
                         (3, 'Carlos Almeida', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua A, 100', 'Belo Horizonte', 'Gerente', 'M', '1975-04-20', 8000.00),
                         (4, 'Ana Souza', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua B, 200', 'São Paulo', 'Caixa', 'F', '1988-07-10', 3000.00),
                         (5, 'Marcos Pinto', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. Central, 50', 'Curitiba', 'Atendente', 'M', '1982-02-15', 2500.00),
                         (6, 'Juliana Castro', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua das Orquídeas, 80', 'Florianópolis', 'Gerente', 'F', '1979-11-30', 8500.00),
                         (7, 'Roberto Lima', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. Brasil, 150', 'Rio de Janeiro', 'Caixa', 'M', '1990-05-05', 3200.00),
                         (8, 'Fernanda Ribeiro', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua Sol, 300', 'Recife', 'Atendente', 'F', '1985-08-20', 2800.00),
                         (9, 'Eduardo Silva', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua das Acácias, 120', 'Porto Alegre', 'Caixa', 'M', '1987-03-18', 3100.00),
                         (10, 'Patrícia Gomes', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. Atlântica, 220', 'Rio de Janeiro', 'Gerente', 'F', '1978-07-25', 9000.00),
                         (11, 'Bruno Moreira', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua Verde, 75', 'Belo Horizonte', 'Atendente', 'M', '1992-12-10', 2700.00),
                         (12, 'Larissa Dias', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. dos Coqueiros, 110', 'Fortaleza', 'Caixa', 'F', '1991-06-05', 3300.00),
                         (13, 'Ricardo Fernandes', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua das Rosas, 130', 'São Paulo', 'Atendente', 'M', '1986-09-15', 2900.00),
                         (14, 'Sofia Martins', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. Paulista, 200', 'São Paulo', 'Gerente', 'F', '1980-04-28', 9500.00),
                         (15, 'Leonardo Costa', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua dos Pinheiros, 95', 'Curitiba', 'Caixa', 'M', '1993-11-02', 3100.00),
                         (16, 'Isabela Rocha', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. das Américas, 300', 'Florianópolis', 'Atendente', 'F', '1989-02-17', 2600.00),
                         (17, 'Gustavo Nunes', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua do Comércio, 210', 'Recife', 'Caixa', 'M', '1984-07-07', 3400.00);
                     
INSERT INTO `dependente`(`nome_comp`, `matricula` , `data_nas`, `idade`, `parentesco`) VALUES 
					    ('Lucas Almeida', 1, '2005-02-15', 19, 'Filho'),
						('Mariana Souza', 2, '2012-08-22', 12, 'Filha'),
						('Pedro Almeida', 1, '2005-03-10', 18, 'Filho'),
                        ('Mariana Almeida', 1, '2007-07-15', 16, 'Filha'),
                        ('Bruna Souza', 2, '2010-01-20', 13, 'Filha'),
                        ('Carlos Pinto', 3, '2008-05-05', 15, 'Filho'),
                        ('Elisa Castro', 4, '2004-09-30', 19, 'Filha'),
                        ('Diego Lima', 5, '2009-12-12', 14, 'Filho'),
                        ('Fabiana Ribeiro', 6, '2011-04-18', 12, 'Filha'),
                        ('Gustavo Silva', 7, '2007-08-25', 16, 'Filho'),
                        ('Helena Gomes', 8, '2006-11-11', 17, 'Filha'),
                        ('Igor Moreira', 9, '2010-06-22', 13, 'Filho'),
                        ('Joana Dias', 10, '2008-10-10', 15, 'Filha'),
                        ('Kevin Fernandes', 11, '2005-02-28', 18, 'Filho'),
                        ('Laura Martins', 12, '2007-03-30', 16, 'Filha'),
                        ('Miguel Costa', 13, '2009-12-05', 14, 'Filho'),
                        ('Nina Rocha', 14, '2012-07-19', 11, 'Filha');

INSERT INTO `transacao`(`conta_num_conta`, `tipo_transacao`, `data_hora`, `valor`) VALUES 
					   (1, 'Depósito', '2025-02-10 10:30:00', 500.00),
					   (2, 'Saque', '2025-02-11 14:45:00', 300.00),
                       (1, 'Depósito', '2025-03-20 10:00:00', 500.00),
                       (2, 'Saque', '2025-03-20 11:00:00', 200.00),
                       (3, 'Depósito', '2025-03-20 12:00:00', 300.00),
                       (4, 'Saque', '2025-03-20 13:00:00', 150.00),
                       (5, 'Depósito', '2025-03-20 14:00:00', 700.00),
                       (6, 'Saque', '2025-03-20 15:00:00', 100.00),
                       (7, 'Depósito', '2025-03-20 16:00:00', 450.00),
                       (8, 'Saque', '2025-03-20 17:00:00', 250.00),
                       (9, 'Depósito', '2025-03-20 18:00:00', 600.00),
                       (10, 'Saque', '2025-03-20 19:00:00', 300.00),
                       (1, 'Depósito', '2025-03-21 10:30:00', 550.00),
                       (2, 'Saque', '2025-03-21 11:30:00', 220.00),
					   (3, 'Depósito', '2025-03-21 12:30:00', 330.00),
                       (4, 'Saque', '2025-03-21 13:30:00', 180.00),
                       (5, 'Depósito', '2025-03-21 14:30:00', 770.00);
                     
INSERT INTO `agencia`(`nome_ag`, `cidade`, `sal_total`) VALUES 
					 ('Agência Centro', 'Belo Horizonte', 500000.00),
					 ('Agência Paulista', 'São Paulo', 750000.00),
                     ('Agência Centro', 'Belo Horizonte', 500000.00),
					 ('Agência Paulista', 'São Paulo', 750000.00),
                     ('Agência Sul', 'Porto Alegre', 600000.00),
                     ('Agência Norte', 'Fortaleza', 550000.00),
                     ('Agência Leste', 'Recife', 520000.00),
					 ('Agência Oeste', 'Curitiba', 580000.00),
					 ('Agência da Lagoa', 'Rio de Janeiro', 800000.00),
                     ('Agência Municipal', 'Salvador', 480000.00),
                     ('Agência Comercial', 'Goiânia', 510000.00),
                     ('Agência VIP', 'Florianópolis', 650000.00),
                     ('Agência Ouro', 'Belo Horizonte', 700000.00),
                     ('Agência Prata', 'São Paulo', 730000.00),
                     ('Agência Bronze', 'Porto Alegre', 690000.00),
                     ('Agência Diamante', 'Rio de Janeiro', 850000.00),
                     ('Agência Esmeralda', 'Curitiba', 720000.00);


					