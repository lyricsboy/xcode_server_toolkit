require 'http'
require 'uri'

module XcodeServerToolkit
  module Model
    
    class XcodeHTTPRequest
      
      PORT = 20343
      PATH_PREFIX = "/api"
      
      def initialize(http_client, host, path)
        @http = http_client
        @host = host
        @path = path
      end
      
      def build_url(query = nil)
        URI::HTTPS.build(host: @host, port: PORT, path: "#{PATH_PREFIX}/#{@path}", query: query).to_s
      end
      
      def execute
        raise "Subclasses must implement #execute"
      end
      
    end
    
    class GetRequest < XcodeHTTPRequest
      
      def initialize(http_client, host, path)
        super(http_client, host, path)
      end
      
      def execute
        @http.get(build_url)
      end
      
    end
    
  end
end
