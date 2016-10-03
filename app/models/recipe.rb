class Recipe < ApplicationRecord
  belongs_to :course
  # has_many :ingredients
  has_and_belongs_to_many :ingredients
end
