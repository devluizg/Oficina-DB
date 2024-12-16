<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projeto de Banco de Dados para Oficina</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
        }
        h1, h2, h3 {
            color: #333;
        }
        code {
            background-color: #f4f4f4;
            padding: 2px 4px;
            border-radius: 4px;
        }
        pre {
            background-color: #f4f4f4;
            padding: 10px;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <h1>Projeto de Banco de Dados para Oficina</h1>
    <h2>Descrição</h2>
    <p>
        Este projeto consiste na criação de um esquema lógico para o contexto de uma oficina, baseado em um modelo ER previamente definido. O esquema lógico foi implementado utilizando o modelo relacional e o banco de dados foi criado com SQL. Foram realizadas inserções de dados para testes e consultas SQL para recuperação de informações.
    </p>
    <h2>Esquema Lógico</h2>
    <p>O esquema lógico é composto pelas seguintes tabelas:</p>
    <ul>
        <li><strong>Cliente</strong>: Armazena informações dos clientes.</li>
        <li><strong>Veículo</strong>: Armazena informações dos veículos dos clientes.</li>
        <li><strong>Serviço</strong>: Armazena informações dos serviços oferecidos pela oficina.</li>
        <li><strong>Funcionário</strong>: Armazena informações dos funcionários da oficina.</li>
        <li><strong>Ordem de Serviço</strong>: Armazena informações das ordens de serviço realizadas.</li>
        <li><strong>Itens_OS</strong>: Armazena os itens de cada ordem de serviço.</li>
    </ul>
    <h2>Script SQL</h2>
    <p>O script SQL para criação do esquema do banco de dados e inserção de dados está disponível no arquivo <code>script.sql</code>.</p>
    <h2>Consultas SQL</h2>
    <p>As consultas SQL para recuperação de informações estão disponíveis no arquivo <code>queries.sql</code>. As consultas incluem:</p>
    <ul>
        <li>Recuperações simples com SELECT Statement;</li>
        <li>Filtros com WHERE Statement;</li>
        <li>Criação de atributos derivados;</li>
        <li>Ordenação dos dados com ORDER BY;</li>
        <li>Condições de filtros aos grupos – HAVING Statement;</li>
        <li>Junções entre tabelas.</li>
    </ul>
    <h2>Como Executar</h2>
    <ol>
        <li>Clone o repositório.</li>
        <li>Execute o script SQL (<code>script.sql</code>) em seu banco de dados.</li>
        <li>Realize as consultas SQL (<code>queries.sql</code>) para testar o banco de dados.</li>
    </ol>
</body>
</html>
