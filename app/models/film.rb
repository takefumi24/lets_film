class Film < ApplicationRecord

  has_many :reviews
  belongs_to :user
  has_many :feelings, through: :film_feelings
  has_many :film_feelings
end
