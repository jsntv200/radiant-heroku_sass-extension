require "radiant-heroku_sass-extension"

class HerokuSassExtension < Radiant::Extension
  version     RadiantHerokuSassExtension::VERSION
  description RadiantHerokuSassExtension::DESCRIPTION
  url         RadiantHerokuSassExtension::URL

  def activate
    ActionController::Dispatcher.middleware.use HerokuSass
  end
end
