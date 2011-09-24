# Heroku Sass

Render and serve your SASS files from the tmp directory which has read / write access on Heroku.


## Installation

Add the gem to your Gemfile within the production group :

    group :production do
      gem "radiant-heroku_sass-extension", "~> 1.0.0"
    end

Update your bundle :

    $ bundle install

The config.ru that ships with Radiant also causes issues on Heroku so
either delete or ignore it before an initial git commit. If your app
returns 404 errors when requesting your javacript or images then the issue 
is the probably the config.ru file.

You can also ignore generated assets during development so they don't get
deployed to Heroku. Add the following to your .gitignore :

    public/stylesheets/admin
    public/stylesheets/layout
    config.ru


## TODO

- Write some tests
