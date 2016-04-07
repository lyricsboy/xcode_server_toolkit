module XcodeServerToolkit
  
  class Command
    
    class << self
      attr_accessor :name
      attr_accessor :description
      
      def all_commands
        [
          Commands::BotSetBranchCommand,
          Commands::GetIntegrationQueueCommand
        ]
      end
    end

    attr_accessor :arguments
    
    def initialize(api_client)
      @api_client = api_client
    end
    
    def execute
    end
    
  end
  
  class CommandError < Error
    
  end
    
end