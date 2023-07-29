## Descrição do Desafio

O objetivo deste desafio é replicar a modelagem do projeto lógico de banco de dados para um cenário de e-commerce. É importante prestar atenção nas definições de chave primária e estrangeira, assim como nas constraints presentes no cenário modelado. Nessa modelagem, haverá relacionamentos presentes no modelo EER (Entidade-Relacionamento Estendido), portanto, é recomendado consultar como proceder para esses casos. Além disso, deve-se aplicar o mapeamento dos modelos aos refinamentos propostos no módulo de modelagem conceitual.

### Passos do Desafio:

1. Realizar a criação do Script SQL para criação do esquema do banco de dados.
2. Realizar a persistência de dados para realização de testes.
3. Especificar queries mais complexas do que as apresentadas durante a explicação do desafio. As queries devem conter as seguintes cláusulas:

    - Recuperações simples com SELECT Statement
    - Filtros com WHERE Statement
    - Criação de expressões para gerar atributos derivados
    - Definição de ordenações dos dados com ORDER BY
    - Condições de filtros aos grupos - HAVING Statement
    - Criação de junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

4. Elaborar perguntas que podem ser respondidas pelas consultas realizadas.
5. Adicionar o projeto a um repositório do GitHub para futura avaliação do desafio.
6. Adicionar ao README a descrição do projeto lógico para fornecer o contexto sobre o esquema lógico apresentado.

### Objetivo:

O objetivo é aplicar o mapeamento para o cenário do e-commerce, refinando o modelo apresentado e acrescentando os seguintes pontos:

1. Cliente PJ e PF - Uma conta pode ser PJ (Pessoa Jurídica) ou PF (Pessoa Física), mas não pode ter as duas informações ao mesmo tempo.
2. Pagamento - Um cliente pode ter cadastrado mais de uma forma de pagamento.
3. Entrega - Cada entrega possui status e código de rastreio.

Algumas das perguntas que podem ser respondidas pelas consultas SQL:

1. Quantos pedidos foram feitos por cada cliente?
2. Algum vendedor também é fornecedor?
3. Relação de produtos, fornecedores e estoques.
4. Relação de nomes dos fornecedores e nomes dos produtos.

Agora é a sua vez de ser o protagonista! Implemente o desafio sugerido pela expert e faça o upload do seu projeto para um repositório próprio. Dessa forma, você aumentará ainda mais seu portfólio de projetos no GitHub!
