# Rubocop Getninjas

## Guia de Estilos para o ruby Getninjas

# Instalando

Adicione isso em seu gem file

```ruby
gem "rubocop-getninjas"
```

Então execute

```shell
$ bundle install
```

Ou instale local

```shell
$ gem install rubocop-getninjas
```

## Setup

Crie na pasta root de seu projeto o arquivo yml `.rubocop.yml`. Neste arquivo você importará o arquivo de configuração desta biblioteca.

```
require:
  - rubocop-getninjas

```

Após a criação do arquivo, será necessário gerar a lista de ofensas do projeto. Para que posteriormente seja possível fazer as correções necessárias.

- Neste passo você terá que gerar um arquivo chamado `rubocop_todo.yml`. Este arquivo é responsável por armazenar a lista de ofensas que o rubocop encontrou baseado em sua política.

```
rubocop --auto-gen-config
```