require 'dotenv'

KEYS = Dotenv.load

module API
  class Interface
    def self.call(url)
      response = RestClient::Request.execute(
        :method => :get,
        :url => "localhost:3000/#{url}",
        :headers => {AUTHORIZATION: KEYS["API_KEY"]}
      )
  #     response = RestClient.post(
  # "localhost:3000/#{url}",
  # request,
  # :headers => :json, :accept => :json, :'x-auth-key' => "mykey")
    end
  end
end
