class CreateCabins < ActiveRecord::Migration[6.0]
  def change
    create_table :cabins do |t|
      t.string :name
      t.integer :beds
      t.integer :deck
      t.references :ship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
