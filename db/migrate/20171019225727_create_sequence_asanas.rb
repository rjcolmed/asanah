class CreateSequenceAsanas < ActiveRecord::Migration[5.1]
  def change
    create_table :sequence_asanas do |t|
      t.integer :sequence_id
      t.integer :asana_id
    end

    add_index :sequence_asanas, :sequence_id
    add_index :sequence_asanas, :asana_id 
    add_foreign_key :sequence_asanas, :sequences
    add_foreign_key :sequence_asanas, :asanas
  end
end
