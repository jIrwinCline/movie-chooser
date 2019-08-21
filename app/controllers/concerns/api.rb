require 'dotenv'

KEYS = Dotenv.load

module API
  class Interface
    def self.call(url)
      response = RestClient.get(
        "localhost:3000/#{url}",
        params: {token: KEYS["API_KEY"]}
      )
    end
  end
end
