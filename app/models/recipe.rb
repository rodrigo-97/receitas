class Recipe < ApplicationRecord
  #Associations
  has_many :comments, dependent: :destroy

  KIND=['Fritas', 'Salgados', 'Doces', 'Peixes', 'Saladas']

  # Validations
  validates :name, :stuff, :calories, :prepare_mode, :cost, :kind, :portion, :duration, presence: true

  # Methods
  def self.created_at
    order(created_at: :DESC)
  end
end
