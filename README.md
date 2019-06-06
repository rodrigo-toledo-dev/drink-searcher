# SumOne Programming Challenge

## The drink searcher

### Introdução

Na SumOne, utilizamos RubyOnRails na maioria das soluções que desenvolvemos,
mas estamos atentos também a frameworks javascripts para criar soluções
com a melhor usabilidade possível para nossos clientes.

Queremos que você não só seja um _developer_ efetivo mas que também saiba
desenvolver aplicativos que façam parte de uma arquitetura maior. É preciso
capacidade de organização, documentação e abstração para conceber tais
sistemas, e é nesses aspectos que vamos mirar nesse desafio.

### Requisitos para rodar o projeto

O projeto está utilizando o ruby versão `2.4.2`. A versão do rails é a `5.1.4`.

Para criar o banco de dados:

`$ bundle exec rails db:create db:migrate db:seed`

*OBS:* Não esqueça de rodar o `db:seed` pois já pré-cadastramos uma série de drinks com diversos atributos
para você realizar seus testes.


#### Objetivo geral
Implementar novas funcionalidades ao um sistema de busca e recomendação de drinks.

#### Objetivos principais

* Implementar uma funcionalidade de recomendação de drink para o usuário utilizando os campos que existem no modelo de Drink, ou seja, permitir que o usuário informe as preferências dele em um formulário, e usar essas preferências para recomendar uma ou mais bebidas para ele. Fique a vontade para decidir como e quantas informações o usuário vai informar, e qual algoritmo vai ser utilizado para escolher a recomendação para o usuário.

#### Objetivos secundários

* Implementar um filtro simples por nome na tela inicial, trazendo os resultados ordenados por nome e adicionando paginação para mostrar somente 10 itens por página.

* Fazer ao menos testes unitários para serviços e métodos criados para a recomendação e a busca simples por nome, mas não se limitando, testes são sempre bem vindos.

#### Sugestões espertas ;)

* As buscas podem ser implementadas de maneira assíncrona via javascript, sem a necessidade de recarregar a página cada
vez que o usuário realizar uma busca.

* O campo de descrição do Drink também contém informações interessantes para realizar a recomendação de drink :)

* Utilizar alguma plataforma para fazer deploy e deixar o projeto rodando, podendo ser o heroku.

* Você pode utilizar algumas `gems` para o que julgar necessário. Mas o algoritmo de recomendação é de sua responsabilidade.

#### O que vamos avaliar

* Implementação do algoritmo de recomendação de drink

* Estrutura e organização do código de todas as funcionalidades implementadas

* Estrutura e organização dos testes
