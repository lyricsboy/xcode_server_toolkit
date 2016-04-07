
module XcodeServerToolkit

  class Error < RuntimeError
  end
  
end

require "xcode_server_toolkit/version"
require "xcode_server_toolkit/cli"
require "xcode_server_toolkit/api_client"
require "xcode_server_toolkit/model/bot"
require "xcode_server_toolkit/model/integration"
require "xcode_server_toolkit/model/integration_queue"
require "xcode_server_toolkit/model/xcode_http_request"
require "xcode_server_toolkit/model/bot_requests"
require "xcode_server_toolkit/model/get_integration_queue_request"
require "xcode_server_toolkit/command"
require "xcode_server_toolkit/commands/bot_set_branch_command"
require "xcode_server_toolkit/commands/get_integration_queue_command"