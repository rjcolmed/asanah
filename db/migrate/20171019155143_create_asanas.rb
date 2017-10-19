class CreateAsanas < ActiveRecord::Migration[5.1]
  def change
    create_table :asanas do |t|
      t.string :english_name
      t.string :devanagari_name
      t.string :transliterated_name
      t.integer :group_id
    end
  
    add_index :asanas, :group_id
    add_foreign_key :asanas, :groups
  end
end
