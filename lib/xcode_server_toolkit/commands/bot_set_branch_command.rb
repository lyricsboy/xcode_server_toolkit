module XcodeServerToolkit
  module Commands
    
    class BotSetBranchCommand < Command
      
      self.name = "bot-set-branch"
      self.description = "Set an existing bot's branch to a new value"
      
      def execute
        bot_id, branch_name = arguments
        raise CommandError, "Expected bot_id, branch_name as arguments" if bot_id.nil? || branch_name.nil?
        bot = @api_client.bot_get(bot_id)
        bot.scm_branch = branch_name
        @api_client.bot_patch(bot)
      end
    end
      
  end
end
