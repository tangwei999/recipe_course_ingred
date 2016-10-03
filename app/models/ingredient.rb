class Ingredient < ApplicationRecord
  # has_many :ingredients_recipes
  # has_many :recipes, through: :ingredients_recipes

  has_and_belongs_to_many :recipes
end
