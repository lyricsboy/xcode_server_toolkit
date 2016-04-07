require 'spec_helper'
require_relative 'integration_fixtures'

describe XcodeServerToolkit::Model::Integration do
  
  it 'handles running integrations' do
    integration = IntegrationFixtures::running_integration
    expect(integration.id).to eq "13e0f43576a18a30f81e80c47a002801"
    expect(integration.number).to eq 1
    expect(integration.result).to eq "unknown"
    expect(integration.scm_branch).to eq "jjm/env-switching"
    expect(integration.scm_revision).to eq "33cba34204c686540f77a7e57ea78a4afc14b5c7"
    expect(integration.current_step).to eq "building"
    expect(integration.queued_at).to eq DateTime.iso8601("2016-04-05T16:39:28.361Z").to_time
    expect(integration.started_at).to eq DateTime.iso8601("2016-04-05T17:07:42.477Z").to_time
  end
  
  it 'handles pending integrations' do
    integration = IntegrationFixtures::pending_integration
    expect(integration.id).to eq "e69cc1bcadba5be87cc90cebf396e5d4"
    expect(integration.number).to eq 3
    expect(integration.result).to eq "unknown"
    expect(integration.scm_branch).to eq "jjm/HVT-order-enhancements"
    expect(integration.scm_revision).to be_nil
    expect(integration.current_step).to eq "pending"
    expect(integration.queued_at).to eq DateTime.iso8601("2016-04-06T22:53:12.766Z").to_time
    expect(integration.started_at).to be_nil
  end
  
end
