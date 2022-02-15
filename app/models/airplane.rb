class Airplane < ApplicationRecord

    belongs_to :flight, optional: true

end
