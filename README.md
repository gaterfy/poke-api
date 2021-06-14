# Poke-Api

[herokuapp](https://safe-refuge-96073.herokuapp.com/api/v1/pokemon)

## Install

### Clone the repository

```shell
git clone https://github.com/gaterfy/poke-api.git
cd poke-api
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.7.3`

If not, install the right ruby version using [rvm](https://github.com/rvm/rvm) (it could take a while):

```shell
rvm install 2.7.3
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) :

```shell
bundle 
```

### Initialize the database

```shell
rails db:create db:migrate
```

### use task rake to persist data

```shell
bundle exec rake "scheduler:run_poke_api"
```

### test project with rspec
```shell
bundle exec rspec spec
```

## Serve

```shell
rails s
```

## Launch api

To launch the api:

* index
```
http://localhost:3000/api/v1/pokemon
```
* show
```
http://localhost:3000/api/v1/pokemon/bulbasaur
```

# poke-api
