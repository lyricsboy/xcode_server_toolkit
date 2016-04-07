require 'spec_helper'
require_relative 'bot_fixtures'

describe XcodeServerToolkit::Model::Bot do
  
  before(:each) do
    @bot = BotFixtures::standard_bot
  end
  
  it 'has an ID' do
    expect(@bot.id).to eq "851f5c39c6f2d5cfe1bd6dda57a2cf12"
  end
  
  it 'has a name' do
    expect(@bot.name).to eq "jimbo's favorite bot"
  end
  
  it 'can change its name' do
    @bot.name = "donkey ride"
    expect(@bot.name).to eq "donkey ride"
  end
  
  it 'has a scm_branch' do 
    expect(@bot.scm_branch).to eq "master"
  end
  
  it 'can change its scm_branch' do
    @bot.scm_branch = "foo/bar"
    expect(@bot.scm_branch).to eq "foo/bar"
  end
  
  it 'can convert itself to JSON' do
    json = @bot.to_json
    bot_json_hash = JSON.parse(json)
    orig_bot_json_hash = JSON.parse(XCODE_BOT_JSON)
    expect(bot_json_hash).to eq orig_bot_json_hash
  end
end
