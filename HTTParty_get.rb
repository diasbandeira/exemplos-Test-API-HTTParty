require 'httparty'

response = HTTParty.get('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup')
puts "response code: #{response.code}"
puts "response message: #{response.message}"
puts "response headers: #{response.headers}"
puts "response body: #{response.body}"
