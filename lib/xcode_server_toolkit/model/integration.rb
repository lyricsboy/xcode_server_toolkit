require 'json'

module XcodeServerToolkit
  module Model
    
    class Integration
      attr_reader :id, :number, :result, :current_step, :queued_at, :started_at, :bot
  
      def initialize(integration_json)
        @json = integration_json.is_a?(Hash) ? integration_json : JSON.parse(integration_json)
        @bot = Bot.new(@json["bot"])
      end
  
      def id
        @json["_id"]
      end
      
      JSON_KEY_NUMBER = "number"
      def number
        @json[JSON_KEY_NUMBER]
      end
      
      JSON_KEY_RESULT = "result"
      def result
        @json[JSON_KEY_RESULT]
      end
      
      JSON_KEY_CURRENT_STEP = "currentStep"
      def current_step
        @json[JSON_KEY_CURRENT_STEP]
      end
      
      JSON_KEY_QUEUED_DATE = "queuedDate"
      def queued_at
        DateTime.iso8601(@json[JSON_KEY_QUEUED_DATE]).to_time
      end
      
      JSON_KEY_STARTED_TIME = "startedTime"
      def started_at
        started_time = @json[JSON_KEY_STARTED_TIME]
        return nil unless started_time
        DateTime.iso8601(started_time).to_time
      end
      
      JSON_KEY_SCM_BRANCH = "DVTSourceControlBranchIdentifierKey"
      def scm_branch
        begin
          primary_scm_location[JSON_KEY_SCM_BRANCH]
        rescue
          @bot.scm_branch
        end
      end
      
      JSON_KEY_SCM_REVISION = "DVTSourceControlLocationRevisionKey"
      def scm_revision
        begin
          primary_scm_location[JSON_KEY_SCM_REVISION]
        rescue
          nil
        end
      end
      
      private
      
      def revision_blueprint
        @json["revisionBlueprint"]
      end
      
      def primary_scm_location
        revision_blueprint["DVTSourceControlWorkspaceBlueprintLocationsKey"][primary_scm_repository_key]
      end
      
      def primary_scm_repository_key
        revision_blueprint["DVTSourceControlWorkspaceBlueprintPrimaryRemoteRepositoryKey"]
      end
      
    end
  end
end