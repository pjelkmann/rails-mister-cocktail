class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail, inverse_of: :doses
  validates :cocktail, presence: true, uniqueness: {scope: :ingredient}
  validates :ingredient, presence: true
end
