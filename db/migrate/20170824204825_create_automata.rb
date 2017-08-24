class CreateAutomata < ActiveRecord::Migration[5.1]
  def change
    create_table :automata do |t|
      t.string :title
      t.integer :function
      t.boolean :working

      t.timestamps
    end
  end
end
