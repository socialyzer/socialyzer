require 'rails'

module Socialyzer
 
  class Engine < Rails::Engine
 
    initializer "setup" do |app|
      config_file = File.join(app.root,"config","socialyzer.yml")
      if File.exist?(config_file)
        config = YAML.load_file(config_file)
        Socialyzer::API_KEY  = config["api_key"] if config["api_key"]
        Socialyzer::BASE_URL = config["api_url"] || "http://api.socialyzerhq.com"
      end
    end
 
  end
 
end

