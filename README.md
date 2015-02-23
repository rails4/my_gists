## My Gists

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.2.0
* System dependencies:
  - Git
  - [RVM](https://rvm.io/rvm/install)
  - SQLite
  - [Pygments](http://pygments.org/):
    see [pygments.css.erb](app/assets/stylesheets/pygments.css.erb),
    [show.html.erb](app/views/gists/show.html.erb)
  - [Heroku Toolbeit](https://toolbelt.heroku.com/)
* Configuration: *.ruby-gemset*
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)

### Deployment instructions

Zaczynamy od poprawek w pliku [Gemfile](Gemfile):
*sqlite3* do *development*; *pg* do *production*.

```console
Development:
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
# heroku run rake db:migrate
```

### Scaffold

```console
rails g scaffold gist snippet:text lang description
rake db:migrate
```

### TODO

- [ ] [Foundation](https://github.com/zurb/foundation-rails)
  - [docs](http://foundation.zurb.com/docs/)
- [ ] [Bootstrap](https://github.com/seyhunak/twitter-bootstrap-rails)

*Important:* Add Foundation or Bootstrap on branches.
