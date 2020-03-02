class Film < ApplicationRecord

  has_many :reviews
  belongs_to :user
  has_many :feelings, through: :film_feelings
  has_many :film_feelings

  def self.search(search)
    return Film.all unless search
    Film.where('title LIKE(?)', "%#{search}%")
  end
end
