class User < ApplicationRecord

    has_secure_password 

    has_many :reservations 
    # through relationship between user and flight
  
      
end
