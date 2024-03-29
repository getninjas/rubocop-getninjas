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

Crie na pasta root de seu projeto o arquivo yml `.rubocop.yml` e adicione essa linha no topo do arquivo.

```
inherit_gem:
  rubocop-getninjas: rubocop.yml

```

Crie na pasta root de seu projeto o arquivo yml `.codeclimate.yml` e adicione essa linha no topo do arquivo.
```
inherit_gem:
  rubocop-getninjas: codeclimate.yml
```


Após a criação do arquivo, será necessário gerar a lista de ofensas do projeto. Para que posteriormente seja possível fazer as correções necessárias.

- Neste passo você terá que gerar um arquivo chamado `rubocop_todo.yml`. Este arquivo é responsável por armazenar a lista de ofensas que o rubocop encontrou baseado em sua política.

```
rubocop --auto-gen-config
```
