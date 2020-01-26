class Superhero < ApplicationRecord
    has_many :battles
    has_many :teams, through: :battles
end
