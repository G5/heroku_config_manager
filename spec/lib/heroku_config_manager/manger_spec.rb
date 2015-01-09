require "spec_helper"

describe HerokuConfigManager::Manager do
  let(:manager) { described_class.new(api_key, apps) }
  let(:apps) { ["foo"] }
  let(:api_key) { "12345" }

  describe "#set" do
    let(:params) { { "MY_CONFIG_VAR" => "some-value" } }
    let(:expected_url) { "https://api.heroku.com/apps/#{apps.first}/config-vars" }
    let(:expected_parameters) do
      {
        body: params.to_json,
        headers: {
          "Content-Type" => "application/json",
          "Accept" => "application/vnd.heroku+json; version=3",
          "Authorization" => Base64.encode64(":#{api_key}")
        }
      }
    end

    subject { manager.set(params) }
    before { HTTParty.stub(:patch) }

    it "calls the Heroku api resource with the appropriate headers and body" do
      expect(HTTParty).to receive(:patch).with(expected_url, expected_parameters)
      subject
    end
  end
end
