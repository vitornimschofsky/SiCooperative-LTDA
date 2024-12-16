# SiCooperative-LTDA
Engenharia de Dados

Este projeto foi desenvolvido como parte de um desafio técnico de engenharia de dados, com o objetivo de demonstrar habilidades em modelagem de dados, ETL (extração, transformação e carga) e integração de sistemas. A empresa fictícia SiCooperative LTDA enfrenta desafios em consolidar informações de diferentes fontes para apoiar a tomada de decisões e criar soluções financeiras personalizadas para seus associados.

A proposta do desafio consiste na criação de um Data Lake para centralizar os dados de movimentações de cartões dos associados e gerar uma visão única com a integração de diferentes tabelas. O projeto envolve a modelagem do banco de dados, geração de dados fictícios para alimentar as tabelas e a utilização de tecnologias como Docker, MySQL, Databricks e Python para processar e transformar os dados.

A arquitetura do sistema foi projetada para rodar localmente, utilizando Docker para containerizar o MySQL, e Databricks para consumir e processar os dados utilizando o framework PySpark.


Arquitetura

+------------------+       +-------------------+       +------------------+
|   Docker         | ---->|  MySQL Database    | ----> |  Databricks      |
| (MySQL container)|      | (Tables: associado,|       | (Read and process|
|                  |      |  conta, cartao,    |       |  data via JDBC)  |
+------------------+      |  movimento)        |       +------------------+
                          +-------------------+     


## Tecnologias Utilizadas

- **Docker**: Para containerizar o MySQL, garantindo um ambiente isolado e fácil de configurar.
- **MySQL**: Banco de dados relacional utilizado para armazenar as tabelas de dados.
- **Databricks**: Plataforma de análise de dados baseada em Apache Spark, usada para processar e transformar os dados.
- **Python**: Linguagem de programação usada para gerar dados fictícios (com a biblioteca Faker) e interagir com o banco de dados.
- **PySpark**: Framework para processamento de dados distribuído, utilizado no Databricks para transformação de dados.



Tabela final consolidada

 ![image](https://github.com/user-attachments/assets/80f6aad2-5c18-495c-8666-79adadc08c15)

 
Explicação das colunas:
nome_associado: Primeiro nome do associado.
sobrenome_associado: Sobrenome do associado.
idade_associado: Idade do associado.
vlr_transacao_movimento: Valor da transação realizada.
des_transacao_movimento: Descrição da transação (ex: compra, saque, pagamento, etc.).
data_movimento: Data em que a transação foi realizada.
numero_cartao: Número do cartão associado à transação (apenas exemplo, não real).
nome_impresso_cartao: Nome impresso no cartão.
data_criacao_cartao: Data de criação do cartão.
tipo_conta: Tipo da conta (corrente ou poupança).
data_criacao_conta: Data de criação da conta associada ao cartão.



## Considerações Finais

Este projeto foi desenvolvido com o objetivo de demonstrar o processo de ETL e transformação de dados utilizando tecnologias de Big Data. Com mais tempo, poderíamos expandir o projeto para lidar com dados maiores e integrar outras fontes de dados. 

Sinta-se à vontade para contribuir ou fazer melhorias no código!


## Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.
