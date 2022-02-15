class Flight < ApplicationRecord

    has_and_belongs_to_many :reservations, optional: true
    belongs_to :airplane, optional: true

end
