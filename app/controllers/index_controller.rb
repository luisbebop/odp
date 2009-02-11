class IndexController < ApplicationController
  before_filter :authenticate
  
  def index
    b = Blamewidth.instance()
    
    pessoas = Pessoa.find(:all)
    # creates an array with ips
    array_of_ips = pessoas.map { |pessoa| pessoa.ip }
    # creates a hash with key 'ip' and value in an array with [email]
    hash_of_emails =  pessoas.inject({}) do |hash,pessoa|
                        hash[pessoa.ip] = [pessoa.email]
                        hash
                      end
    
    # Setup ip, username and password in /servers
    # setup connection and ips to analyse.
    server = Server.find(:first)
    b.setup(server.ip, server.username, server.password ,array_of_ips)
    
    # get a nested array with key 'ip' and values in an array with [bytes in, bytes out, download speed, upload speed]
    network_data = b.sort_traffic_and_speed(:download).reverse
    # creates a nested array with network_data + email
    @network = network_data.map {|ip,data| [ip,data+hash_of_emails[ip]]}
  end
end
