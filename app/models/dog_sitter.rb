class DogSitter < ApplicationRecord
  has_many :stroll
  has_many :dogs, through: :stroll
end
