require 'spec_helper'

describe XcodeServerToolkit::Model::XcodeHTTPRequest do
  
  before(:each) do
    @request = described_class.new(nil, "www.google.com", "bots")
  end
  
  it "can build an URL" do
    url = @request.build_url
    expect(url).to eq "https://www.google.com:20343/api/bots"
  end
  
  it "can build an URL with a query string" do
    url = @request.build_url "overwriteBlueprint=true"
    expect(url).to eq "https://www.google.com:20343/api/bots?overwriteBlueprint=true"
  end
  
  it "can't be executed without subclassing" do
    expect{@request.execute}.to raise_error(RuntimeError)
  end
  
end