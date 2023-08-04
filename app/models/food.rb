class Food < ApplicationRecord
  belongs_to :user
  has_many :recipes, through: :recipe_foods
  has_many :recipe_foods

  # def price=(value)
  #   super(value&.delete('$'))
  # end
end
