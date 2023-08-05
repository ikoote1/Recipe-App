class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food
  attribute :quantity, :integer

  validates :food_quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
