class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image
      t.string :manufacture
      t.text :ingredients
      t.text :infoNutritional
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
