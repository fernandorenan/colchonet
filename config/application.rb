require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Colchonet
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
      config.time_zone = 'Brasilia'
    # config.eager_load_paths << Rails.root.join("extras")
   
    # The default locale is :en and all translations from    
    # config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path +=
    # Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
      config.i18n.default_locale = :'pt-BR'

      config.action_mailer.default_url_options = { host: ' ' }
  end
end
