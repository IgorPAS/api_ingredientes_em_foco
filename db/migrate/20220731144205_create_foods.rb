class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.string :manufacture, null: false
      t.text :ingredients, null: false
      t.text :infoNutritional, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
