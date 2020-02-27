class FilmFeeling < ApplicationRecord
  belongs_to :film
  belongs_to :feeling
end
