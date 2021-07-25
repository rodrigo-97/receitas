class Comment < ApplicationRecord
  belongs_to :recipe

  validates :name, :rating, :comment, presence: true
  validates_length_of :comment, maximun: 300
  RATING=[0,1,2,3,4,5]
  validates_inclusion_of :rating, in: RATING
end
