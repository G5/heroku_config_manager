class HerokuConfigManager::Manager
  BASE_ENDPOINT = "https://api.heroku.com/apps"
  RESOURCE = "config-vars"

  def initialize(api_key, apps)
    @api_key = api_key
    @apps    = [apps].flatten
  end

  def set(vars)
    @apps.each { |app| set_config(app, vars) }
  end

  private

  def set_config(app, vars)
    HTTParty.patch(url_for(app), params(vars))
  end

  def url_for(app)
    "#{BASE_ENDPOINT}/#{app}/#{RESOURCE}"
  end

  def headers
    {
      headers: {
        "Content-Type"  => "application/json",
        "Accept"        => "application/vnd.heroku+json; version=3",
        "Authorization" => Base64.encode64(":#{@api_key}")
      }
    }
  end

  def params(vars)
    { body: vars.to_json }.merge(headers)
  end
end

