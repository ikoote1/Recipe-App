class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods

  # def price=(value)
  #   super(value&.delete('$'))
  # end
end
