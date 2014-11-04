class Character < ActiveRecord::Base
	has_many :known_powers, class_name: "CharactersPower",
							foreign_key: "character_id",
							dependent: :destroy
end
