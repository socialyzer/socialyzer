require 'rails'

module Socialyzer
 
  class Engine < Rails::Engine
 
    initializer "setup" do |app|
      config_file = File.join(app.root,"config","socialyzer.yml")
      if File.exist?(config_file)
        Socialyzer::API_KEY = YAML.load_file(config_file)["api_key"]
      end
    end
 
  end
 
end

