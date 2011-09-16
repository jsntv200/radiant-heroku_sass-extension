require "rack/static"
require "sass/plugin"

class HerokuSass
  def initialize(app)
    compile
    @static = Rack::Static.new(app, :urls => ["/stylesheets"], :root => "#{Rails.root}/tmp")
  end

  def call(env)
    @static.call(env)
  end

  def options
    Sass::Plugin.options
  end

  def tmp_template_location
    options[:template_location].to_a.map {|input, output| [input, output.sub("public", "tmp")]}
  end

  def compile
    options.merge!(
      :cache             => false,
      :never_update      => false,
      :quiet             => Rails.env.production?,
      :template_location => tmp_template_location
    )

    Sass::Plugin.update_stylesheets
  end
end
