require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module DistanceTracker
  class Application < Rails::Application
    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  end
end
