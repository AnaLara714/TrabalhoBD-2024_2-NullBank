-- triggers

DELIMITER $$

USE `Equipe498866`$$
DROP TRIGGER IF EXISTS `cliente_has_conta_BEFORE_INSERT` $$

CREATE TRIGGER `cliente_has_conta_BEFORE_INSERT`
BEFORE INSERT ON `cliente_has_conta` 
FOR EACH ROW
BEGIN
    DECLARE num_cpf_conta INT;
    DECLARE conta_existente INT;
    
    -- Verifica se já existe uma conta para o mesmo cliente na mesma agência
    SELECT COUNT(*) INTO conta_existente
    FROM cliente_has_conta chc
    JOIN conta c ON chc.conta_num_conta = c.num_conta
    WHERE chc.cliente_cpf = NEW.cliente_cpf 
    AND c.agencia_num_ag = (SELECT agencia_num_ag FROM conta WHERE num_conta = NEW.conta_num_conta);

    IF conta_existente > 0 THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "O cliente já possui uma conta nesta agência";
    END IF;
    
    -- Verifica se a conta já tem dois titulares
    SELECT COUNT(*) INTO num_cpf_conta
    FROM cliente_has_conta
    WHERE conta_num_conta = NEW.conta_num_conta;
    
    IF num_cpf_conta >= 2 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A conta só pode ter até dois titulares.';
    END IF;
END$$


USE `Equipe498866`$$
DROP TRIGGER IF EXISTS `dependente_BEFORE_INSERT` $$
USE `Equipe498866`$$
CREATE DEFINER = CURRENT_USER TRIGGER `Equipe498866`.`dependente_BEFORE_INSERT` BEFORE INSERT ON `dependente` FOR EACH ROW
BEGIN
DECLARE num_dependentes INT;
    DECLARE idade_dependente INT;

    -- Conta o número de dependentes já associados ao funcionário
    SELECT COUNT(*) INTO num_dependentes
    FROM dependente
    WHERE matricula = NEW.matricula;

    -- Se o número de dependentes for 5 ou mais, gera um erro
    IF num_dependentes > 5 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'O funcionário não pode ter mais do que 5 dependentes.';
    END IF;

    -- Calcula a idade do dependente
    SET idade_dependente = TIMESTAMPDIFF(YEAR, NEW.data_nas, CURDATE());

    -- Atualiza o valor da idade no novo dependente
    SET NEW.idade = idade_dependente;
END$$


USE `Equipe498866`$$
DROP TRIGGER IF EXISTS `funcionario_BEFORE_INSERT` $$
USE `Equipe498866`$$
CREATE DEFINER = CURRENT_USER TRIGGER `Equipe498866`.`funcionario_BEFORE_INSERT` BEFORE INSERT ON `funcionario` FOR EACH ROW
BEGIN

-- Não permite que o salário do funcionario seja menor que R$2.286,00

IF NEW.salario < 2286.00 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'O salário não pode ser menor que R$2.286,00.';
    END IF;
END$$


USE `Equipe498866`$$
DROP TRIGGER IF EXISTS `funcionario_AFTER_INSERT` $$
USE `Equipe498866`$$
CREATE DEFINER = CURRENT_USER TRIGGER `Equipe498866`.`funcionario_AFTER_INSERT` AFTER INSERT ON `funcionario` FOR EACH ROW
BEGIN
UPDATE agencia 

-- Atualiza o salário do funcinário do funcionário quando receber um aumento

SET sal_total = sal_total + NEW.salario
WHERE num_ag = NEW.num_ag;
END;$$


USE `Equipe498866`$$
DROP TRIGGER IF EXISTS `funcionario_BEFORE_UPDATE` $$
USE `Equipe498866`$$
CREATE DEFINER = CURRENT_USER TRIGGER `Equipe498866`.`funcionario_BEFORE_UPDATE` BEFORE UPDATE ON `funcionario` FOR EACH ROW
BEGIN

-- Após a atualização do aumento do salário, e não permite o salário ser menor que R$2.286,00 

IF NEW.salario < 2286.00 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'O salário não pode ser menor que R$2.286,00.';
    END IF;
END$$


USE `Equipe498866`$$
DROP TRIGGER IF EXISTS `funcionario_AFTER_UPDATE` $$
USE `Equipe498866`$$
CREATE DEFINER = CURRENT_USER TRIGGER `Equipe498866`.`funcionario_AFTER_UPDATE` AFTER UPDATE ON `funcionario` FOR EACH ROW
BEGIN

-- Atualiza o valor do salário total da agência após atualizar o salário do funcinário

IF OLD.salario <> NEW.salario THEN
        UPDATE agencia
        SET sal_total = sal_total - OLD.salario + NEW.salario
        WHERE num_ag = NEW.num_ag;
    END IF;
END$$


USE `Equipe498866`$$
DROP TRIGGER IF EXISTS `funcionario_BEFORE_DELETE` $$
USE `Equipe498866`$$
CREATE DEFINER = CURRENT_USER TRIGGER `Equipe498866`.`funcionario_BEFORE_DELETE` BEFORE DELETE ON `funcionario` FOR EACH ROW
BEGIN

-- Atualiza o valor do salário total da agência após deletar o salário do funcinário

UPDATE agencia
    SET sal_total = sal_total - OLD.salario
    WHERE num_ag = OLD.num_ag;
END$$


USE `Equipe498866`$$
DROP TRIGGER IF EXISTS `transacao_BEFORE_INSERT` $$
USE `Equipe498866`$$
CREATE DEFINER = CURRENT_USER TRIGGER `Equipe498866`.`transacao_BEFORE_INSERT` BEFORE INSERT ON `transacao` FOR EACH ROW

-- Insere no atributo data_hora a data e hora que foi feita a transação

BEGIN
SET NEW.data_hora = NOW();
END;$$


USE `Equipe498866`$$
DROP TRIGGER IF EXISTS `transacao_AFTER_INSERT` $$
USE `Equipe498866`$$
CREATE DEFINER = CURRENT_USER TRIGGER `Equipe498866`.`transacao_AFTER_INSERT` AFTER INSERT ON `transacao` FOR EACH ROW
BEGIN

-- Verifica e atualiza o valor do saldo quando houver trnsação e de acordo com o tipo dela

IF NEW.tipo_transacao IN ('Depósito', 'Estorno', 'Pagamento') THEN
        UPDATE conta SET saldo = saldo + NEW.valor WHERE num_conta = NEW.conta_num_conta;
    ELSEIF NEW.tipo_transacao IN ('Saque', 'Transferência', 'PIX') THEN
        IF (SELECT saldo FROM conta WHERE num_conta = NEW.conta_num_conta) - NEW.valor < 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Saldo insuficiente para realizar a transação.';
        ELSE
            UPDATE conta SET saldo = saldo - NEW.valor WHERE num_conta = NEW.conta_num_conta;
        END IF;
    END IF;
END$$


DELIMITER ;

-- Consultas 

USE `Equipe498866`;

-- 1.1 Funcionários de uma agência ordenados por nome (ex agencia 1)
SELECT f.nome_comp, f.cargo, f.endereço, f.cidade, f.salario
FROM funcionario f
WHERE f.num_ag = 1
ORDER BY f.nome_comp;

-- 1.2 Clientes da agência, classificados por tipo de conta (ex conta corrente)
SELECT c.cpf, c.nome_comp, ct.num_conta, ct.tipo_conta
FROM cliente c
JOIN cliente_has_conta chc ON c.cpf = chc.cliente_cpf
JOIN conta ct ON chc.conta_num_conta = ct.num_conta
WHERE ct.tipo_conta = 'Corrente';

-- 1.3 Contas especiais com maior saldo devedor
SELECT num_conta, saldo
FROM conta
WHERE tipo_conta = 'Especial'
ORDER BY saldo ASC; -- Saldo negativo mais alto primeiro

-- 1.4 Contas poupança com maior saldo positivo
SELECT num_conta, saldo
FROM conta
WHERE tipo_conta = 'Poupança'
ORDER BY saldo DESC;

-- 1.5 Contas correntes com maior número de transações nos últimos 7, 30 e 365 dias
SELECT t.conta_num_conta, COUNT(*) AS num_transacoes
FROM transacao t
JOIN conta c ON t.conta_num_conta = c.num_conta
WHERE c.tipo_conta = 'Corrente' AND t.data_hora >= NOW() - INTERVAL 7 DAY
GROUP BY t.conta_num_conta
ORDER BY num_transacoes DESC;

-- 1.5 Contas correntes com maior número de transações nos últimos 30 dias
SELECT t.conta_num_conta, COUNT(*) AS num_transacoes
FROM transacao t
JOIN conta c ON t.conta_num_conta = c.num_conta
WHERE c.tipo_conta = 'Corrente' AND t.data_hora >= NOW() - INTERVAL 30 DAY
GROUP BY t.conta_num_conta
ORDER BY num_transacoes DESC;

-- 1.5 Contas correntes com maior número de transações nos últimos 365 dias
SELECT t.conta_num_conta, COUNT(*) AS num_transacoes
FROM transacao t
JOIN conta c ON t.conta_num_conta = c.num_conta
WHERE c.tipo_conta = 'Corrente' AND t.data_hora >= NOW() - INTERVAL 7 DAY
GROUP BY t.conta_num_conta
ORDER BY num_transacoes DESC;

-- 1.6 Contas com maior volume de movimentações (valor total) (7 dias)
SELECT t.conta_num_conta, SUM(t.valor) AS volume_movimentado
FROM transacao t
WHERE t.data_hora >= NOW() - INTERVAL 7 DAY
GROUP BY t.conta_num_conta
ORDER BY volume_movimentado DESC;

-- 1.6 Contas com maior volume de movimentações (valor total) (30 dias)
SELECT t.conta_num_conta, SUM(t.valor) AS volume_movimentado
FROM transacao t
WHERE t.data_hora >= NOW() - INTERVAL 30 DAY
GROUP BY t.conta_num_conta
ORDER BY volume_movimentado DESC;

-- 1.6 Contas com maior volume de movimentações (valor total) (365 dias)
SELECT t.conta_num_conta, SUM(t.valor) AS volume_movimentado
FROM transacao t
WHERE t.data_hora >= NOW() - INTERVAL 365 DAY
GROUP BY t.conta_num_conta
ORDER BY volume_movimentado DESC;

SELECT a.nome_ag, SUM(f.salario) AS salario_montante_total
FROM funcionario f
JOIN agencia a ON f.num_ag = a.num_ag
GROUP BY a.nome_ag
ORDER BY salario_montante_total DESC;

-- 2.1 Quais as contas do cliente, seus tipos, agências, gerentes e saldos atuais?
SELECT 
    c.num_conta, 
    c.tipo_conta, 
    c.saldo, 
    a.nome_ag AS agencia, 
    f.nome_comp AS gerente
FROM conta c
JOIN agencia a ON c.agencia_num_ag = a.num_ag
JOIN funcionario f ON c.gerente_matricula = f.matricula
JOIN cliente_has_conta chc ON c.num_conta = chc.conta_num_conta
WHERE chc.cliente_cpf = 12345678901;

-- 2.2 Quais os nomes dos clientes e seus CPFs com os quais aquele cliente possui contas conjuntas;

SELECT 
    c1.nome_comp AS nome_cliente, 
    c1.cpf AS cpf_cliente, 
    c2.nome_comp AS nome_titular_conjunto, 
    c2.cpf AS cpf_titular_conjunto, 
    chc1.conta_num_conta AS conta_compartilhada
FROM cliente_has_conta chc1
JOIN cliente_has_conta chc2 ON chc1.conta_num_conta = chc2.conta_num_conta
JOIN cliente c1 ON chc1.cliente_cpf = c1.cpf
JOIN cliente c2 ON chc2.cliente_cpf = c2.cpf
WHERE chc1.cliente_cpf = '12345678902'
  AND chc2.cliente_cpf <> chc1.cliente_cpf;
  
-- 2.3 Quais as contas correntes deste cliente com maior número de transações na última semana 
-- (últimos 7 dias), no último mês (últimos 30 dias) e no último ano (últimos 365 dias);  

-- útimos 7 dias 
SELECT t.conta_num_conta, COUNT(*) AS num_transacoes
FROM transacao t
JOIN conta c ON t.conta_num_conta = c.num_conta
JOIN cliente_has_conta chc ON c.num_conta = chc.conta_num_conta
WHERE chc.cliente_cpf = '12345678901'
  AND c.tipo_conta = 'Corrente'
  AND t.data_hora >= NOW() - INTERVAL 7 DAY
GROUP BY t.conta_num_conta
ORDER BY num_transacoes DESC;

-- útimos 30 dias
SELECT t.conta_num_conta, COUNT(*) AS num_transacoes
FROM transacao t
JOIN conta c ON t.conta_num_conta = c.num_conta
JOIN cliente_has_conta chc ON c.num_conta = chc.conta_num_conta
WHERE chc.cliente_cpf = '12345678901' 
  AND c.tipo_conta = 'Corrente'
  AND t.data_hora >= NOW() - INTERVAL 30 DAY
GROUP BY t.conta_num_conta
ORDER BY num_transacoes DESC;

-- útimos 365 dias
SELECT t.conta_num_conta, COUNT(*) AS num_transacoes
FROM transacao t
JOIN conta c ON t.conta_num_conta = c.num_conta
JOIN cliente_has_conta chc ON c.num_conta = chc.conta_num_conta
WHERE chc.cliente_cpf = '12345678901' 
  AND c.tipo_conta = 'Corrente'
  AND t.data_hora >= NOW() - INTERVAL 365 DAY
GROUP BY t.conta_num_conta
ORDER BY num_transacoes DESC;

-- 3.1 Quais os nomes e endereços dos clientes que moram naquela cidade, ordenando-os por idade;

SELECT 
    c.nome_comp, 
    e.tipo_log,
    e.rua,
    e.num,
    e.bairro,
    e.cep,
    e.cidade,
    e.estado,
    TIMESTAMPDIFF(YEAR, c.data_nasc, CURDATE()) AS idade
FROM 
    cliente c
JOIN 
    endereco e ON c.cpf = e.cliente_cpf
WHERE 
    e.cidade = 'São Paulo'
ORDER BY 
    idade;

-- 3.2 Quais os nomes, endereços, cargos, salários e agências dos funcionários que trabalham naquela 
-- cidade, agrupando-os por agência, por cargo e por salário;

SELECT 
    f.nome_comp, 
    f.endereço, 
    f.cargo, 
    f.salario, 
    a.nome_ag
FROM funcionario f
JOIN agencia a ON f.num_ag = a.num_ag
WHERE a.cidade = 'Belo Horizonte'
GROUP BY a.num_ag, f.cargo, f.salario, f.nome_comp, f.endereço
ORDER BY a.num_ag, f.cargo, f.salario;

-- 3.3 Quais os nomes das agências e o salário montante total dos funcionários que trabalham 
-- naquelas agências, ordenando-os por salário montante total;

SELECT 
    a.nome_ag, 
    SUM(f.salario) AS salario_montante_total
FROM funcionario f
JOIN agencia a ON f.num_ag = a.num_ag
WHERE a.cidade = 'São Paulo'
GROUP BY a.num_ag
ORDER BY salario_montante_total DESC;

-- Views

-- 4 Criar uma visão para listar os dados das contas de um gerente, com seus tipos, saldos e clientes;
CREATE OR REPLACE VIEW contas_gerente AS
SELECT 
    c.num_conta,
    c.tipo_conta,
    c.saldo,
    cl.nome_comp AS nome_cliente,
    cl.cpf AS cpf_cliente,
    f.nome_comp AS nome_gerente
FROM conta c
JOIN cliente_has_conta chc ON c.num_conta = chc.conta_num_conta
JOIN cliente cl ON chc.cliente_cpf = cl.cpf
JOIN funcionario f ON c.gerente_matricula = f.matricula;

-- para visualizar a view
SELECT * FROM contas_gerente WHERE nome_gerente = 'Camilly';

-- 5 Criar uma visão para listar, para cada conta, todos os dados das movimentações das mesmas 
-- (estilo extrato, podem ser na última semana (últimos 7 dias), no último mês (últimos 30 dias) e no 
-- último ano (últimos 365 dias)

CREATE VIEW extrato_contas AS
SELECT 
    t.num_transacao,
    t.conta_num_conta,
    t.tipo_transacao,
    t.data_hora,
    t.valor,
    c.saldo AS saldo_atual,
    cl.nome_comp AS nome_cliente
FROM transacao t
JOIN conta c ON t.conta_num_conta = c.num_conta
JOIN cliente_has_conta chc ON c.num_conta = chc.conta_num_conta
JOIN cliente cl ON chc.cliente_cpf = cl.cpf
WHERE t.data_hora >= DATE_SUB(CURDATE(), INTERVAL 365 DAY);

SELECT * FROM extrato_contas 
WHERE data_hora >= DATE_SUB(CURDATE(), INTERVAL 7 DAY);

-- Procedimento para transferencia 
DELIMITER $$
CREATE PROCEDURE realizar_transferencia(
    IN p_conta_origem INT,
    IN p_conta_destino INT,
    IN p_valor DECIMAL(10,2)
)
BEGIN
    DECLARE saldo_atual DECIMAL(15,2);

    -- Iniciar uma transação
    START TRANSACTION;

    -- Verifica saldo na conta de origem
    SELECT saldo INTO saldo_atual FROM conta WHERE num_conta = p_conta_origem;
    
    IF saldo_atual < p_valor THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Saldo insuficiente para realizar a transferência';
    ELSE
        -- Debita da conta de origem
        UPDATE conta 
        SET saldo = saldo - p_valor 
        WHERE num_conta = p_conta_origem;

        -- Credita na conta de destino
        UPDATE conta 
        SET saldo = saldo + p_valor 
        WHERE num_conta = p_conta_destino;

        -- Registra a transação na tabela transacao
        INSERT INTO transacao (conta_num_conta, tipo_transacao, data_hora, valor)
        VALUES (p_conta_origem, 'Transferência', NOW(), p_valor);

        INSERT INTO transacao (conta_num_conta, tipo_transacao, data_hora, valor)
        VALUES (p_conta_destino, 'Depósito', NOW(), p_valor);
    END IF;

    -- Confirma a transação
    COMMIT;
END$$

-- teste (conta origem, conta destino, valor)

CALL realizar_transferencia(5, 2, 200.00);



