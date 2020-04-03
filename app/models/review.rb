class Review < ApplicationRecord
  validates :text, :feeling_id, presence: true
  belongs_to :user
  belongs_to :film
  has_many :comments
  belongs_to :feeling
end
