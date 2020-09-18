# Desafio programação - para vaga desenvolvedor Ruby on Rails

O desafio está dentro da pasta `Challenger-ruby`.
Todos os commits do processo estão comitados nesse diretório.

# Instruções para executar o projeto

1. Tenha  o ruby 2.6.6 instalado
2. Tenha o rails 6.0.3.3 instalado
3. Tenha o PostgreSQL na versão miníma 10.
4. Clone esse repositório.
5. Execute `bundle install` para instalar todas as gems e dependências do projeto.
6. Execute `yarn install` para instalar todas as dependências do projeto.
7. Na pasta `config` copie o arquivo `database.sample.yml` para `database.yml` e configure seu usuário e senha do PostgreSQL.
8. Execute `rails db:create; rails db:migrate; rails db:test:prepare`.
9. Para realizar a bateria de teste do RSPEC execute `bundle exec rspec`
10. Para testar no navegador execute `rails s` ou `rails server`, abra o navegador e digite `localhost:3000` e realize os testes.

# Descrição do projeto

Você recebeu um arquivo CNAB com os dados das movimentações finanaceira de várias lojas.
Precisamos criar uma maneira para que estes dados sejam importados para um banco de dados.

Sua tarefa é criar uma interface web que aceite upload do [arquivo CNAB](https://github.com/ByCodersTec/desafio-ruby-on-rails/blob/master/CNAB.txt), normalize os dados e armazene-os em um banco de dados relacional e exiba essas informações em tela.

Obrigado ;)
