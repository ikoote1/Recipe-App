class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_units
      t.string :price
      t.integer :quantity
      t.boolean :public
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
