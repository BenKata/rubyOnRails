class Genre < ApplicationRecord
    has_many :novels
    validates_length_of :name, minimum: 3, allow_black: false
end
