class Review < ApplicationRecord

  belongs_to :user
  belongs_to :film
  belongs_to :comment
  belongs_to :feeling
end
