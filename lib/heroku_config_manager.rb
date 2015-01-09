require "heroku_config_manager/version"
require "heroku_config_manager/manager"
require "httparty"

module HerokuConfigManager
  class << self
    def set(api_key, apps, vars)
      Manager.new(api_key, apps).set(vars)
    end
  end
end
