class CreateIngredientsRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients_recipes do |t|
      t.string :ingredient_id
      t.string :recipe_id

      t.timestamps
    end
  end
end
