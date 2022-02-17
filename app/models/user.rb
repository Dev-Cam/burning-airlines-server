class User < ApplicationRecord
    
    has_secure_password 

    def self.from_token_request request
        name = request.params["auth"] && request.params["auth"]["name"]
        self.find_by name: name
    end

    has_many :reservations 
    # through relationship between user and flight
  
      
end
