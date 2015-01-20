class Character < ActiveRecord::Base
	has_many :known_powers, class_name: "CharactersPower",
							foreign_key: "character_id",
							dependent: :destroy
	has_many :employers, class_name: "CharactersOrganization",
							foreign_key: "character_id",
							dependent: :destroy
end
