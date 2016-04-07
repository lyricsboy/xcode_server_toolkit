module XcodeServerToolkit
  
  class CLI
    
    attr_accessor :host, :user, :pass
    
    @@ENV_TO_ATTR_MAP = {
      'XCS_TOOLKIT_HOST' => 'host',
      'XCS_TOOLKIT_USER' => 'user',
      'XCS_TOOLKIT_PASS' => 'pass'
    }
    
    def initialize(environment, arguments)
      # get what we need out of the environment
      @@ENV_TO_ATTR_MAP.each do |var, attr_name|
        value = environment[var]
        raise CLIError.new("Required environment variable '#{var}' not set.") if value.nil?
        send("#{attr_name}=", value)
      end
      @arguments = arguments
    end
    
    def execute
      # process the command found in @arguments
      temp_args = @arguments.dup
      command_name = temp_args.shift
      raise UsageError.new("Please provide a command.") if command_name.nil?
      command_class = Command.all_commands.find { |c| c.name == command_name }
      raise UsageError.new("Unknown command: '#{command_name}'") if command_class.nil?
      api_client = APIClient.new(@host, @user, @pass)
      command = command_class.new(api_client)
      command.arguments = temp_args
      command.execute
    end
    
    def print_usage(out_io = STDERR)
      out_io.puts "Commands:"
      Command.all_commands.each do |c|
        out_io.puts "\t#{c.name}"
        out_io.puts "\t\t#{c.description}"
      end
    end
    
  end
  
  class CLIError < Error
  end
  
  class UsageError < CLIError
  end

end
