class Review < ApplicationRecord
  # validates :feeling, :title, :text, presence: true
  belongs_to :user
  belongs_to :film
  belongs_to :comment
  belongs_to :feeling
end
