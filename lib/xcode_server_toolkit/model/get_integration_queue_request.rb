module XcodeServerToolkit
  module Model
    
    class GetIntegrationQueueRequest < GetRequest
      
      def initialize(http_client, host)
        super(http_client, host, "queues/integrations")
      end
      
    end
    
  end
end