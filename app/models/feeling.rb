class Feeling < ApplicationRecord

  has_many :reviews
  has_many :film_feelings
  has_many :films, through: :film_feelings
end
