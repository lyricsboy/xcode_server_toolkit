require 'json'

module XcodeServerToolkit
  module Model
    
    class BotRequest < XcodeHTTPRequest
      
      def initialize(http_client, host, id)
        super(http_client, host, "bots/#{id}")
      end
      
    end
    
    class BotGetRequest < BotRequest
      
      def execute
        @http.get(build_url)
      end
    
    end
    
    class BotPatchRequest < BotRequest
      
      def initialize(http_client, host, bot)
        super(http_client, host, bot.id)
        @bot = bot
      end
      
      def execute
        @http.patch(build_url("overwriteBlueprint=true"), body: @bot.to_json)
      end
      
    end

  end
end
