require 'spec_helper'

describe XcodeServerToolkit::Model::GetIntegrationQueueRequest do
  
  it 'executes a GET request to the appropriate URL' do
    http_mock = double "http"
    expect(http_mock).to receive(:get).with("https://www.google.com:20343/api/queues/integrations")
    
    request = described_class.new(http_mock, "www.google.com")
    
    request.execute
  end
  
end
