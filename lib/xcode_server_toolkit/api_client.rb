require 'pry'

module XcodeServerToolkit
  
  class APIClient
    
    def initialize(host, user, password)
      @host = host
      @http = HTTP.basic_auth(user: user, pass: password)
        .accept(:json)
        .headers("x-xcsclientversion" => "4", "Content-Type" => "application/json")
      ctx = OpenSSL::SSL::SSLContext.new
      ctx.cert_store = OpenSSL::X509::Store.new
      ctx.cert_store.set_default_paths
      ctx.verify_mode = OpenSSL::SSL::VERIFY_NONE
      # TODO: allow override of cert checking
      # ctx.verify_callback = method :ssl_verify_callback
      @http.default_options = @http.default_options.merge({
        :ssl_context => ctx
        })
    end
    
    def bot_get(id)
      response = Model::BotGetRequest.new(@http, @host, id).execute
      raise RequestError.new(response) unless response.code == 200
      Model::Bot.new(response.body.to_s)
    end
    
    def bot_patch(bot)
      response = Model::BotPatchRequest.new(@http, @host, bot).execute
      raise RequestError.new(response) unless response.code == 200
      Model::Bot.new(response.body.to_s)
    end
    
    def get_integration_queue()
      response = Model::GetIntegrationQueueRequest.new(@http, @host).execute
      raise RequestError.new(response) unless response.code == 200
      Model::IntegrationQueue.new(response.body.to_s)
    end
    
    private
    
    def ssl_verify_callback(preverify_ok, ssl_context)
      return true if preverify_ok
      # binding.pry
      cert = ssl_context.current_cert
      puts cert.to_text
      print "Certificate verification failed. Accept? (Y/N) "
      command = $stdin.gets.strip.downcase
      accepted = command == 'y'
      # store the cert in the store for future requests
      # ssl_context.cert_store.add_cert(cert) if accepted
      accepted
    rescue Exception => e
      puts e
      raise e
    end
    
  end
  
  class RequestError < Error
    attr_reader :response
    
    def initialize(response)
      super("Unexpected response: #{response}")
      @response = response
    end
    
  end
  
end
