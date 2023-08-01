class Food < ApplicationRecord
  belongs_to :user

  # def price=(value)
  #   super(value&.delete('$'))
  # end
end
