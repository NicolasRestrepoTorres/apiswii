class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.integer :population
      t.boolean :existing
      t.string :address

      t.timestamps
    end
  end
end
