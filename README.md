## My Gists

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.2.0 (wpisujemy w pliku [Gemfile](Gemfile))
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
  Creating warm-fortress-9464... done, stack is cedar-14
  https://warm-fortress-9464.herokuapp.com/ | https://git.heroku.com/warm-fortress-9464.git
  Git remote heroku added
git push heroku master
heroku run rake db:migrate
heroku open
```
Opcjonalnie zmieniamy nazwę aplikacji:
```console
heroku apps:rename NEWNAME --app warm-fortress-9464
```

### Scaffold

```console
rails g scaffold gist snippet:text lang description
rake db:migrate
```

### Validations

* [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html)


### TODO

- [ ] [Foundation](https://github.com/zurb/foundation-rails)
  - [docs](http://foundation.zurb.com/docs/)

*Important:* Add Foundation / Bootstrap on a separate branch.
