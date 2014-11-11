class CreateCharactersOrganizations < ActiveRecord::Migration
  def change
    create_table :characters_organizations do |t|
      t.string :organization_id
      t.string :character_id
      t.string :title

      t.timestamps
    end
    add_index :characters_organizations, :character_id
    add_index :characters_organizations, :organization_id
    add_index :characters_organizations, [:character_id, :organization_id], unique: true, name: "by_character_organization"
  end
end
