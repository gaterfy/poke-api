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

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### Initialize the database

```shell
rails db:create db:migrate
```

### use task rake to persist data

```shell
bundle exec rake "scheduler:run_poke_api"
```
### Add heroku remotes

Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```shell
heroku git:remote -a project
heroku git:remote --remote heroku-staging -a project-staging
```

## Serve

```shell
rails s
```

## Deploy

### With Heroku pipeline (recommended)

Push to Heroku staging remote:

```shell
git push heroku-staging
```

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI:

```shell
heroku pipelines:promote -a project-staging
```

### Directly to production (not recommended)

Push to Heroku production remote:

```shell
git push heroku
```




# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# poke-api
