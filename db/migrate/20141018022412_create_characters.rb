class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :strength
      t.integer :mega_strength
      t.integer :dexterity
      t.integer :mega_dexterity
      t.integer :stamina
      t.integer :mega_stamina
      t.integer :perception
      t.integer :mega_perception
      t.integer :intelligence
      t.integer :mega_intelligence
      t.integer :wits
      t.integer :mega_wits
      t.integer :appearance
      t.integer :mega_appearance
      t.integer :manipulation
      t.integer :mega_manipulation
      t.integer :charisma
      t.integer :mega_charisma

      t.timestamps
    end
  end
end
