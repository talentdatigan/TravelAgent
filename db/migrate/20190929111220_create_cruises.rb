class CreateCruises < ActiveRecord::Migration[6.0]
  def change
    create_table :cruises do |t|
      t.string :name
      t.references :ship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
