class Recipe < ApplicationRecord
  has_many :comments, dependent: :destroy
  def self.created_at
    order(created_at: :DESC)
  end
end
