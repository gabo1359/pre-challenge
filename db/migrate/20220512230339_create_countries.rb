class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :denomination
      t.integer :population
      t.float :land_area
      t.references :continent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
