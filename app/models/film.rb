class Film < ApplicationRecord

  has_many :reviews
  belongs_to :user, optional: true
  belongs_to :feeling, optional: true

  def self.search(search)
    return Film.all unless search
    Film.where('title LIKE(?)', "%#{search}%")
  end

  def getMaxfeeling
    @love = self.reviews.where(feeling_id: 1).count
    @laugh = self.reviews.where(feeling_id: 2).count
    @impressed = self.reviews.where(feeling_id: 3).count
    @fear = self.reviews.where(feeling_id: 4).count
    @courage = self.reviews.where(feeling_id: 5).count
    @adventure = self.reviews.where(feeling_id: 6).count

    feelings = {
      '1':  @love,
      '2':  @laugh,
      '3':  @impressed,
      '4':  @fear,
      '5':  @courage,
      '6':  @adventure
    }

    max_key = ""
    max_value = 0
    feelings.each {|key,value|
      if max_value < value
         max_key = key
         max_value = value
      end
    }
    return max_key.to_s.to_i
  end
end
