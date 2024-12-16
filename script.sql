-- Criação da tabela Cliente
CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereço VARCHAR(255),
    Telefone VARCHAR(15),
    Email VARCHAR(100)
);

-- Criação da tabela Veículo
CREATE TABLE Veículo (
    ID_Veículo INT PRIMARY KEY,
    Placa VARCHAR(10),
    Modelo VARCHAR(50),
    Ano INT,
    ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

-- Criação da tabela Serviço
CREATE TABLE Serviço (
    ID_Serviço INT PRIMARY KEY,
    Descrição VARCHAR(255),
    Preço DECIMAL(10, 2)
);

-- Criação da tabela Funcionário
CREATE TABLE Funcionário (
    ID_Funcionário INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Salário DECIMAL(10, 2)
);

-- Criação da tabela Ordem de Serviço
CREATE TABLE Ordem_de_Serviço (
    ID_OS INT PRIMARY KEY,
    Data DATE,
    ID_Cliente INT,
    ID_Veículo INT,
    ID_Funcionário INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_Veículo) REFERENCES Veículo(ID_Veículo),
    FOREIGN KEY (ID_Funcionário) REFERENCES Funcionário(ID_Funcionário)
);

-- Criação da tabela Itens_OS
CREATE TABLE Itens_OS (
    ID_Item INT PRIMARY KEY,
    ID_OS INT,
    ID_Serviço INT,
    Quantidade INT,
    FOREIGN KEY (ID_OS) REFERENCES Ordem_de_Serviço(ID_OS),
    FOREIGN KEY (ID_Serviço) REFERENCES Serviço(ID_Serviço)
);

-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (ID_Cliente, Nome, Endereço, Telefone, Email) VALUES
(1, 'João Silva', 'Rua A, 123', '11987654321', 'joao.silva@gmail.com'),
(2, 'Maria Souza', 'Rua B, 456', '11987654322', 'maria.souza@gmail.com');

-- Inserindo dados na tabela Veículo
INSERT INTO Veículo (ID_Veículo, Placa, Modelo, Ano, ID_Cliente) VALUES
(1, 'ABC1234', 'Gol', 2010, 1),
(2, 'DEF5678', 'Civic', 2015, 2);

-- Inserindo dados na tabela Serviço
INSERT INTO Serviço (ID_Serviço, Descrição, Preço) VALUES
(1, 'Troca de Óleo', 100.00),
(2, 'Alinhamento', 150.00);

-- Inserindo dados na tabela Funcionário
INSERT INTO Funcionário (ID_Funcionário, Nome, Cargo, Salário) VALUES
(1, 'Carlos Lima', 'Mecânico', 3000.00),
(2, 'Ana Costa', 'Atendente', 2000.00);

-- Inserindo dados na tabela Ordem de Serviço
INSERT INTO Ordem_de_Serviço (ID_OS, Data, ID_Cliente, ID_Veículo, ID_Funcionário) VALUES
(1, '2024-12-01', 1, 1, 1),
(2, '2024-12-02', 2, 2, 2);

-- Inserindo dados na tabela Itens_OS
INSERT INTO Itens_OS (ID_Item, ID_OS, ID_Serviço, Quantidade) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 1, 2);
