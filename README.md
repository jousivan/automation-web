# Automação Web
Teste Automação web

# Tecnologias utilizadas
* Ruby: Linguagem de programação utilizada no projeto
* RSpec: Ferramenta de testes para o Ruby. Utilizada para escrita dos cenários e asserções.
* cucumber: Implementa o padrão BDD, definindo os cenários de testes nos arquivos .features localizados em /features/specs
* capybara: Framework de automação de aplicações que  possibilita simular as ações e comportamento de usuários reais.
* httparty: Utilizado para realizar requisições em url e webservies. Utilizado no projeto para apoio ao carregamento total de elementos nas urls acessadas.
* selenium-webdriver: utilizado para manipular e interagir com a aplicação através de drivers de navegadores.
* site_prism: utilizado para implementar o padrão Page Objects que possibilita uma melhor organização do código.

# Pré-condição para execução dos testes
* Ruby
* Bundle
* ChromeDriver e GeckoDriver


# Execução dos testes
* No diretorio raiz do projeto, onde está localizado o arquivo gemfile, executar o comando abaixo para instalar as dependências do projeto
 ```
bundle install
```
  
* Também na raiz do projeto, para realizar a execução dos testes, deve ser executado o comando:
```
cucumber
```

# Relatório de execução
* No diretório /log dentro do projeto é possível ter acesso ao relatório de execução.
* No diretório /log/screenshots possui o screenshot do teste realizado.