use `Equipe498866`;

INSERT INTO `agencia`(`nome_ag`, `cidade`, `sal_total`) VALUES 
                     ('Agência Centro', 'Belo Horizonte', 0),
					 ('Agência Paulista', 'São Paulo', 0),
                     ('Agência Sul', 'Porto Alegre', 0),
                     ('Agência Norte', 'Fortaleza', 0),
                     ('Agência Leste', 'Recife', 0),
					 ('Agência Oeste', 'Curitiba', 0),
					 ('Agência da Lagoa', 'Rio de Janeiro', 0),
                     ('Agência Municipal', 'Salvador', 0),
                     ('Agência Comercial', 'Goiânia', 0),
                     ('Agência VIP', 'Florianópolis', 0),
                     ('Agência Ouro', 'Belo Horizonte', 0),
                     ('Agência Prata', 'São Paulo', 0),
                     ('Agência Bronze', 'Porto Alegre', 0),
                     ('Agência Diamante', 'Rio de Janeiro', 0),
                     ('Agência Esmeralda', 'Curitiba', 0);
                     
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

INSERT INTO `funcionario`(`num_ag`, `nome_comp`, `senha`, `endereço`, `cidade`, `cargo`, `genero`, `data_nasc`, `salario`) VALUES 
						 (1, 'Carlos Almeida', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua A, 100', 'Belo Horizonte', 'Gerente', 'Masculino', '1975-04-20', 8000.00),
						 (2, 'Ana Souza', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua B, 200', 'São Paulo', 'Caixa', 'Feminino', '1988-07-10', 3000.00),
                         (3, 'Carlos Almeida', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua A, 100', 'Belo Horizonte', 'Gerente', 'Masculino', '1975-04-20', 8000.00),
                         (4, 'Ana Souza', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua B, 200', 'São Paulo', 'Caixa', 'Feminino', '1988-07-10', 3000.00),
                         (5, 'Marcos Pinto', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. Central, 50', 'Curitiba', 'Atendente', 'Masculino', '1982-02-15', 2500.00),
                         (6, 'Juliana Castro', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua das Orquídeas, 80', 'Florianópolis', 'Gerente', 'Feminino', '1979-11-30', 8500.00),
                         (7, 'Roberto Lima', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. Brasil, 150', 'Rio de Janeiro', 'Caixa', 'Não-binário', '1990-05-05', 3200.00),
                         (8, 'Fernanda Ribeiro', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua Sol, 300', 'Recife', 'Atendente', 'Feminino', '1985-08-20', 2800.00),
                         (9, 'Eduardo Silva', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua das Acácias, 120', 'Porto Alegre', 'Caixa', 'Masculino', '1987-03-18', 3100.00),
                         (10, 'Patrícia Gomes', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. Atlântica, 220', 'Rio de Janeiro', 'Gerente', 'Não-binário', '1978-07-25', 9000.00),
                         (11, 'Bruno Moreira', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua Verde, 75', 'Belo Horizonte', 'Atendente', 'Masculino', '1992-12-10', 2700.00),
                         (12, 'Larissa Dias', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. dos Coqueiros, 110', 'Fortaleza', 'Caixa', 'Feminino', '1991-06-05', 3300.00),
                         (13, 'Ricardo Fernandes', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua das Rosas, 130', 'São Paulo', 'Atendente', 'Masculino', '1986-09-15', 2900.00),
                         (14, 'Sofia Martins', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. Paulista, 200', 'São Paulo', 'Gerente', 'Feminino', '1980-04-28', 9500.00),
                         (15, 'Leonardo Costa', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua dos Pinheiros, 95', 'Curitiba', 'Caixa', 'Não-binário', '1993-11-02', 3100.00),
                         (16, 'Isabela Rocha', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Av. das Américas, 300', 'Florianópolis', 'Atendente', 'Não-binário', '1989-02-17', 2600.00),
                         (17, 'Gustavo Nunes', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua do Comércio, 210', 'Recife', 'Caixa', 'Masculino', '1984-07-07', 3400.00);                     
-- altera  uns tipos do atributo do tipo da conta para o tipo especial
INSERT INTO `conta`(`saldo`, `senha`, `tipo_conta`, `juros`, `limite_credito`, `data_aniversario`, `gerente_matricula`, `agencia_num_ag`) VALUES 
				   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.5, 1000.00, '2025-02-10', 1, 1),
				   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.2, 2000.00, '2025-02-11', 2, 1),
				   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.1, 1500.00, '2025-03-10', 1, 3),
				   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.3, 2500.00, '2025-03-11', 2, 4),
                   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Especial', 2.0, 1200.00, '2025-03-12', 1, 5),
				   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.4, 1800.00, '2025-03-13', 2, 6),
                   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.2, 1600.00, '2025-03-14', 1, 7),
                   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Especial', 1.5, 3000.00, '2025-03-15', 2, 8),
				   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.3, 1400.00, '2025-03-16', 1, 9),
                   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Especial', 1.6, 2100.00, '2025-03-17', 2, 10),
                   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Especial', 2.4, 1900.00, '2025-03-18', 1, 11),
                   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.7, 2300.00, '2025-03-19', 2, 12),
				   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.7, 2300.00, '2025-03-19', 2, 3),
                   (0, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.0, 1200.00, '2025-03-12', 1, 5);
                   
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
                               ('98765432101', 3),
                               ('11223344556', 5),
                               ('22334455667', 6),
							   ('33445566778', 7),
                               ('44556677889', 9),
                               ('55667788990', 9),
							   ('66778899001', 10),
                               ('77889900112', 11),
                               ('88990011223', 12),
                               ('12345678901', 13),
                               ('33445566778', 14);
													                     
INSERT INTO `dependente`(`nome_comp`, `matricula` , `data_nas`, `parentesco`) VALUES 
					    ('Lucas Almeida', 1, '2005-02-15', 'Filho'),
						('Mariana Souza', 2, '2012-08-22', 'Filha'),
						('Pedro Almeida', 1, '2005-03-10', 'Filho'),
                        ('Mariana Almeida', 1, '1983-07-15', 'Cônjuge'),
                        ('Bruna Souza', 2, '2010-01-20', 'Filha'),
                        ('Carlos Pinto', 3, '2008-05-05', 'Filho'),
                        ('Elisa Castro', 4, '2004-09-30', 'Filha'),
                        ('Diego Lima', 5, '2009-12-12', 'Filho'),
                        ('Fabiana Ribeiro', 6, '2011-04-18', 'Filha'),
                        ('Gustavo Silva', 7, '1980-08-25', 'Genitor(a)'),
                        ('Helena Gomes', 8, '2006-11-11', 'Filha'),
                        ('Igor Moreira', 9, '1970-06-22', 'Genitor(a)'),
                        ('Joana Dias', 10, '2008-10-10', 'Filha'),
                        ('Kevin Fernandes', 11, '2005-02-28', 'Filho'),
                        ('Laura Martins', 12, '2007-03-30', 'Filha'),
                        ('Miguel Costa', 13, '2009-12-05', 'Filho'),
                        ('Nina Rocha', 14, '2012-07-19', 'Filha');
-- removemos a inserção dos valores de coluna data_hora, pois será inserido agora no trigger da transação         
INSERT INTO `transacao`(`conta_num_conta`, `tipo_transacao`, `valor`) VALUES 
                       (1, 'Pagamento', 500.00),
                       (2, 'Pagamento', 200.00),
                       (3, 'Pagamento', 300.00),
                       (4, 'Pagamento', 150.00),
                       (5, 'Pagamento', 700.00),
                       (6, 'Pagamento', 100.00),
                       (7, 'Pagamento', 450.00),
                       (8, 'Pagamento', 250.00),
                       (9, 'Pagamento', 600.00),
                       (10,'Pagamento', 300.00),
                       (12, 'Pagamento', 550.00),
                       (13, 'Pagamento', 220.00),
					   (3, 'Pagamento', 330.00),
                       (1, 'Pagamento', 180.00),
                       (5, 'Pagamento', 770.00),
                       (1, 'Saque', 100.00);
                     

					