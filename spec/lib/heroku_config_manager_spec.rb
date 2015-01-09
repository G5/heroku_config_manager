require "spec_helper"
require "heroku_config_manager"

describe HerokuConfigManager do
  let(:apps) { ["foo"] }
  let(:api_key) { "12345" }
  let(:params) { { "MY_CONFIG_VAR" => "some-value" } }

  describe "#set" do
    let(:manager) { double(set: nil) }

    subject { HerokuConfigManager.set(api_key, apps, params) }
    before { HerokuConfigManager::Manager.stub(new: manager) }

    it "instantiates a new Manager object" do
      expect(HerokuConfigManager::Manager).to receive(:new).with(api_key, apps)
      subject
    end

    it "calls set on the object" do
      expect(manager).to receive(:set).with(params)
      subject
    end
  end
end
