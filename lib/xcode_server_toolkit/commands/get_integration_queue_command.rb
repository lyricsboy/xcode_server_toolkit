require 'json'

module XcodeServerToolkit
  module Commands
    
    class GetIntegrationQueueCommand < Command
      
      self.name = "get-integration-queue"
      self.description = "Display the queue of integrations in a console-friendly way."
      
      def execute
        queue = @api_client.get_integration_queue()
        puts "Integration Queue: #{queue.count} integrations"
        queue.integrations.each_with_index do |integration, index|
          puts "Queued Integration \##{index}"
          puts "----------------"
          puts "Bot name: #{integration.bot.name}"
          scm_revision = integration.scm_revision ? " @ #{integration.scm_revision}" : ""
          puts "Branch: #{integration.scm_branch}#{scm_revision}"
          puts "Integration number: #{integration.number}"
          puts "Queued at: #{integration.queued_at}"
          puts "Started at: #{integration.started_at}"
          puts "Current step: #{integration.current_step}"
          puts
        end
      end
    end
      
  end
end
