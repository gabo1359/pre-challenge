class CreateGeographicIcons < ActiveRecord::Migration[7.0]
  def change
    create_table :geographic_icons do |t|
      t.string :denomination
      t.timestamp :date_of_creation
      t.float :height
      t.text :history
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
