-- Recuperações simples com SELECT Statement

-- Recuperar todos os clientes
SELECT * FROM Cliente;

-- Recuperar todos os veículos
SELECT * FROM Veículo;

-- Filtros com WHERE Statement

-- Recuperar clientes que moram na 'Rua A'
SELECT * FROM Cliente WHERE Endereço LIKE 'Rua A%';

-- Recuperar veículos do ano 2015
SELECT * FROM Veículo WHERE Ano = 2015;

-- Criação de Atributos Derivados

-- Calcular o custo total de cada item em uma ordem de serviço
SELECT ID_Item, ID_OS, ID_Serviço, Quantidade, (Quantidade * Preço) AS Custo_Total
FROM Itens_OS
JOIN Serviço ON Itens_OS.ID_Serviço = Serviço.ID_Serviço;

-- Ordenação dos Dados com ORDER BY

-- Recuperar todos os clientes ordenados pelo nome
SELECT * FROM Cliente ORDER BY Nome;

-- Recuperar todas as ordens de serviço ordenadas pela data
SELECT * FROM Ordem_de_Serviço ORDER BY Data DESC;

-- Condições de Filtros aos Grupos – HAVING Statement

-- Recuperar o total gasto por cliente em ordens de serviço, apenas para clientes que gastaram mais de 200
SELECT ID_Cliente, SUM(Quantidade * Preço) AS Total_Gasto
FROM Ordem_de_Serviço
JOIN Itens_OS ON Ordem_de_Serviço.ID_OS = Itens_OS.ID_OS
JOIN Serviço ON Itens_OS.ID_Serviço = Serviço.ID_Serviço
GROUP BY ID_Cliente
HAVING SUM(Quantidade * Preço) > 200;

-- Junções entre Tabelas

-- Recuperar informações detalhadas das ordens de serviço
SELECT Ordem_de_Serviço.ID_OS, Ordem_de_Serviço.Data, Cliente.Nome AS Nome_Cliente, Veículo.Modelo AS Modelo_Veículo, Funcionário.Nome AS Nome_Funcionário
FROM Ordem_de_Serviço
JOIN Cliente ON Ordem_de_Serviço.ID_Cliente = Cliente.ID_Cliente
JOIN Veículo ON Ordem_de_Serviço.ID_Veículo = Veículo.ID_Veículo
JOIN Funcionário ON Ordem_de_Serviço.ID_Funcionário = Funcionário.ID_Funcionário;
