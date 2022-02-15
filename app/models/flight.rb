class Flight < ApplicationRecord

    has_and_belongs_to_many :reservations
    belongs_to :airplane

end
