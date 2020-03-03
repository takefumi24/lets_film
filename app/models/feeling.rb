class Feeling < ApplicationRecord

  has_many :reviews
  has_many :films
  # has_many :films, through: :film_feelings
end
