require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)
module GarthsList
  class Application < Rails::Application
    # this bit is from http://www.rails-dev.com/custom-validators-in-ruby-on-rails-4
    config.autoload_paths += %W["#{config.root}/app/validators/"]
  end
end
