class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  validates :name, :stuff, :calories, :prepare_mode, :cost, :kind, :portion, :duration, presence: true
end
