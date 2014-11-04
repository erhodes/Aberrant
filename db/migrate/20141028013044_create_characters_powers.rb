class CreateCharactersPowers < ActiveRecord::Migration
  def change
    create_table :characters_powers do |t|
      t.integer :character_id
      t.integer :power_id
      t.integer :rating

      t.timestamps
    end
    add_index :characters_powers, :character_id
    add_index :characters_powers, :power_id
    add_index :characters_powers, [:character_id, :power_id], unique: true
  end
end
