ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'rails/commands/server'

module Rails
  class Server
    def default_options
      super.merge(Host:  '10.90.0.40', Port: 2244)
      #super.merge(Host:  '10.90.27.90', Port: 2244)
    end
  end
end
