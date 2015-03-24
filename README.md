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

Teraz instalujemy gemy, towrzymy bazę danych SQLite i migrujemy:

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
# heroku run rake db:migrate
```

### Scaffold

```console
rails g scaffold gist snippet:text lang description
rake db:migrate
```


## Ruby on Rails API

* [Rails API](http://api.rubyonrails.org/)


## Bootstrap

- [Official Sass port of Bootstrap](https://github.com/twbs/bootstrap-sass)

### Application Template

We will use [the starter template](http://getbootstrap.com/getting-started/#examples).

The source of [the starter template](http://getbootstrap.com/examples/starter-template/):

```html
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
            data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Project name</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</nav>

<div class="container">
  <div class="starter-template">
    <h1>Bootstrap starter template</h1>
    <p class="lead">Use this document as a way to quickly start any new project.
      <br> All you get is this text and a mostly barebones HTML document.</p>

      <%= yield %> <!-- Ruby on Rails convention; see application.html.erb -->
  </div>
</div>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src=".../ie10-viewport-bug-workaround.js"></script>

</body>
```

Fix vertical space under the navbar: [custom.scss](app/assets/stylesheets/custom.scss).

Refactor:

* partial layouts: [layouts/header](app/views/layouts/_header.html.erb)
* add search button to header: [Components](http://getbootstrap.com/components/#navbar)
  - add brand image to navbar: [Brand image](http://getbootstrap.com/components/#navbar-brand-image)
* style buttons with Bootstrap: [Buttons](http://getbootstrap.com/css/#buttons)
  and CSS (use *rows* attribute in *textarea* element)

**TODO**:

- [ ] use Bootstrap [Alerts](http://getbootstrap.com/components/#alerts)
  for contextual feedback messages


### TODO

- [ ] [Foundation](https://github.com/zurb/foundation-rails)
  - [docs](http://foundation.zurb.com/docs/)

*Important:* Add Foundation or Bootstrap on branches.
