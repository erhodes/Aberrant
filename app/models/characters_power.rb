class CharactersPower < ActiveRecord::Base
	belongs_to :character, class_name: "Character"
	belongs_to :power, class_name: "Power"
end
