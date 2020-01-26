class Team < ApplicationRecord
  belongs_to :user
  has_many :battles
  has_many :superheros, through: :battles
end
