require 'json'

module XcodeServerToolkit
  module Model
    
    class Bot
      attr_reader :id
      attr_accessor :name, :scm_branch
  
      def initialize(bot_json)
        @json = bot_json.is_a?(Hash) ? bot_json : JSON.parse(bot_json)
      end
  
      def id
        @json["_id"]
      end
      
      JSON_KEY_NAME = "name"
      def name
        @json[JSON_KEY_NAME]
      end
  
      def name=(new_name)
        @json[JSON_KEY_NAME] = new_name
      end
      
      JSON_KEY_SCM_BRANCH = "DVTSourceControlBranchIdentifierKey"
      def scm_branch
        scm_blueprint_primary_repo_location[JSON_KEY_SCM_BRANCH]
      end
  
      def scm_branch=(new_branch)
        scm_blueprint_primary_repo_location[JSON_KEY_SCM_BRANCH] = new_branch
      end
  
      def to_json
        JSON.generate @json
      end
  
      private
  
      def scm_blueprint
        @json["configuration"]["sourceControlBlueprint"]
      end
  
      def scm_blueprint_primary_repo_location
        scm_blueprint["DVTSourceControlWorkspaceBlueprintLocationsKey"][scm_blueprint_primary_repo_id]
      end
  
      def scm_blueprint_primary_repo_id
        scm_blueprint["DVTSourceControlWorkspaceBlueprintPrimaryRemoteRepositoryKey"]
      end
  
    end
  end
end