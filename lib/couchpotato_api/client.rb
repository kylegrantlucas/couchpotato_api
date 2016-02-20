module CouchpotatoApi
  class Client
    attr_accessor :client
    def initialize(options=[])
      api_prefix = "/api"
      api_key = options[:api_key]
      schemas = {
        get: {
          search: "#{api_prefix}/#{api_key}/search"
        }
      }
      client = Takeout::Client.new(uri: options[:uri], schemas: schemas)
    end

    def search(query, type=nil)
      return client.get_search(q: query, type: type)
    end
  end
end