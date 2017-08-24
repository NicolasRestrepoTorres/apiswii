class CreateLanguagues < ActiveRecord::Migration[5.1]
  def change
    create_table :languagues do |t|
      t.integer :variance
      t.string :name
      t.integer :readabilty

      t.timestamps
    end
  end
end
