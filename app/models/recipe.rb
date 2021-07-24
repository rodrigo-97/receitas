class Recipe < ApplicationRecord
  def self.created_at
    order(created_at: :DESC)
  end
end
