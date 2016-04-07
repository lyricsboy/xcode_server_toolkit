require 'json'

module XcodeServerToolkit
  module Model
    
    class IntegrationQueue
      attr_reader :count, :integrations
  
      def initialize(integration_queue_json)
        @json = JSON.parse(integration_queue_json)
        @integrations = @json["results"].map { |dict| Integration.new(dict) }
      end
  
      def count
        @json["count"]
      end
      
    end
  end
end