class Book < ApplicationRecord
  belongs_to :user
  has_many :chapters
  acts_as_votable

  def score
    self.get_upvotes.size
  end
end
