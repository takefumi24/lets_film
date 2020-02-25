class Review < ApplicationRecord
  # validates :feeling, :title, :text, presence: true
  belongs_to :user
  belongs_to :film
  has_many :comments
  belongs_to :feeling
end
