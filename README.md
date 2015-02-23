## My Gists

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.2.0
* System dependencies:
  - Git
  - [RVM](https://rvm.io/rvm/install)
  - SQLite
  - [Heroku Toolbeit](https://toolbelt.heroku.com/)
* Configuration: *.ruby-gemset*
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)

### Deployment instructions

Zaczynamy od poprawek w pliku [Gemfile](Gemfile):
*sqlite3* do *development*; *pg* do *production*.

Development:
```console
bundle install --without production
rake db:migrate
```

Production (Heroku):
```console
heroku login
heroku keys:add
heroku create
# Creating warm-fortress-9464... done, stack is cedar-14
# https://warm-fortress-9464.herokuapp.com/ | https://git.heroku.com/warm-fortress-9464.git
# Git remote heroku added
git push heroku master
heroku open
# heroku rename
```
