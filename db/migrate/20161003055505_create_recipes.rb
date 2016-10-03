class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.integer :servings
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end
  end
end
