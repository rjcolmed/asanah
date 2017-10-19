class CreateSequences < ActiveRecord::Migration[5.1]
  def change
    create_table :sequences do |t|
      t.string :name
      t.text :notes
      t.integer :user_id
    end

    add_index :sequences, :user_id
    add_foreign_key :sequences, :users
  end
end
