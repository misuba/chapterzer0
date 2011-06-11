require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Pmonline
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
		#
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
		#
    # Custom directories with classes and modules you want to be autoloadable.
    # config.autoload_paths += %W(#{config.root}/extras)
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

		# For spork	
		if Rails.env.test?
			initializer :after => :initialize_dependency_mechanism do
				ActiveSupport::Dependencies.mechanism = :load
			end
		end
  end
end
