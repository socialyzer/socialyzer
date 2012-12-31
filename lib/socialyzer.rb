module Socialyzer
  require "rest_client"
  require "json"
  require "socialyzer/engine" if defined?(Rails)

  if ENV['SOCIALYZER_API_KEY']
    API_KEY = ENV['SOCIALYZER_API_KEY']
  elsif defined?(SOCIALYZER_API_KEY)
    API_KEY = SOCIALYZER_API_KEY
  end

  def self.add_twitter_user(screen_name)
    api_request(:add_twitter_account, :user => screen_name)
  end

  def self.optimize(screen_name, options={})
    api_request(:optimize, options.merge(:user => screen_name))
  end

  def self.twitter_user(screen_name)
    api_request(:twitter_user, :user => screen_name)["twitter_user"]
  end

  def self.daily_best(screen_name)
    api_request(:daily_best, :user => screen_name)["schedule"]
  end

  def self.api_request(action, options={})
    env = options.delete(:env) || :production
    options.merge!(:key => API_KEY)
    res = RestClient.post api_action(action, env), options.to_json, :content_type => :json, :accept => :json
    JSON.parse(res)
  end

  def self.api_action(action, env=:production)
    subdomain = env == :production ? "api" : "dev"
    "http://#{subdomain}.socialyzerhq.com/api/#{action}.json"
  end

end
