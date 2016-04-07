require 'spec_helper'
require_relative 'bot_fixtures'

describe XcodeServerToolkit::Model::BotGetRequest do
  
  it 'executes a GET request to the appropriate URL' do
    http_mock = double "http"
    expect(http_mock).to receive(:get).with("https://www.google.com:20343/api/bots/12345")
    
    request = described_class.new(http_mock, "www.google.com", "12345")
    
    request.execute
  end
  
end

describe XcodeServerToolkit::Model::BotPatchRequest do
  
  it 'executes a PATCH request with the appropriate URL and body' do
    bot = BotFixtures::standard_bot
    
    http_mock = double "http"
    expected_url = "https://www.google.com:20343/api/bots/851f5c39c6f2d5cfe1bd6dda57a2cf12?overwriteBlueprint=true"
    expect(http_mock).to receive(:patch).with(expected_url, body: bot.to_json)
    
    request = described_class.new(http_mock, "www.google.com", bot)
    
    request.execute
  end
  
end