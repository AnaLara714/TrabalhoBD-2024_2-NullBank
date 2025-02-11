use `Equipe498866`;

/*
INSERT INTO `cliente`(`cpf`, `nome_comp`, `rg`, `orgao_emissor`, `uf`, `data_nasc`) VALUES 
					 ('12345678901', 'João Silva', 'MG123456', 'SSP', 'MG', '1985-06-15'),
					 ('98765432100', 'Maria Oliveira', 'SP987654', 'SSP', 'SP', '1990-09-25');

INSERT INTO `endereco`( `cliente_cpf`, `tipo_log`, `rua`, `num`, `bairro`, `cep`, `cidade`, `estado`) VALUES 
					 ( '12345678901', 'Rua', 'Av. Brasil', 100, 'Centro', '12345678', 'Belo Horizonte', 'MG'),
					 ( '98765432100', 'Rua', 'Rua das Flores', 50, 'Jardins', '87654321', 'São Paulo', 'SP');				

INSERT INTO `telefone`( `cliente_cpf`, `telefone`, `tipo_tel`) VALUES 
					  ( '12345678901', '31999999999', 'Empresarila'),
					  ( '98765432100', '11988888888', 'Pessoal');
                                
INSERT INTO `email`(`id_email`, `cliente_cpf`, `email`, `tipo_email`) VALUES 
				   (NULL, '12345678901', 'joao@email.com', 'Pessoal'),
				   (NULL, '98765432100', 'maria@email.com', 'Pessoal');          			
                        
INSERT INTO `cliente_has_conta`(`cliente_cpf`, `conta_num_conta`) VALUES 
					           ('12345678901', 1001),
							   ('98765432100', 1002);

INSERT INTO `conta`(`num_conta`, `saldo`, `senha`, `tipo_conta`, `juros`, `limite_credito`, `data_aniversário`, `gerente_matricula`) VALUES 
				   (1, 2500.50, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Corrente', 2.5, 1000.00, '2025-02-10', 1, 1),
				(2, 5000.75, '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Poupança', 1.2, 2000.00, '2025-02-11', 2, 2);

INSERT INTO `funcionario`(`matricula`, `num_ag`, `nome_comp`, `senha`, `senha`, `endereço`, `cidade`, `cargo`, `genero`, `data_nasc`, `salario`) VALUES 
						 (1, 1, 'Carlos Almeida', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua A, 100', 'Belo Horizonte', 'Gerente', 'M', '1975-04-20', 8000.00),
						 (2, 2, 'Ana Souza', '$2b$10$EP2SJrnX9dPvhow6ILZLU.y3ygcGGqoM4NYxsP0r9QbGj1uCBPFfy', 'Rua B, 200', 'São Paulo', 'Caixa', 'F', '1988-07-10', 3000.00);
                     
INSERT INTO `dependente`(`nome_comp`, `data_nas`, `idade`, `parentesco`) VALUES 
					    ('Lucas Almeida', '2005-02-15', 19, 'Filho'),
						('Mariana Souza', '2012-08-22', 12, 'Filha');

INSERT INTO `transacao`(`conta_num_conta`, `tipo_transacao`, `data_hora`, `valor`) VALUES 
					   (1, 'Depósito', '2025-02-10 10:30:00', 500.00),
					   (2, 'Saque', '2025-02-11 14:45:00', 300.00);
                     
INSERT INTO `agencia`(`num_ag`, `nome_ag`, `cidade`, `sal_total`) VALUES 
					 (1, 'Agência Centro', 'Belo Horizonte', 500000.00),
					 (2, 'Agência Paulista', 'São Paulo', 750000.00);                     

					*/