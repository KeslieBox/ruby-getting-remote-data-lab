require 'net/http'
 require 'open-uri'
 require 'json'
 require 'pry'

class GetRequester
# needs to take in a URL on initialization and send an HTTP GET request on command 
# needs to build a method for dealing with requests that return JSON.

    
    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        parse_hash = JSON.parse(self.get_response_body)
        parse_hash.collect do |k, v|
        end
        parse_hash
    end

end