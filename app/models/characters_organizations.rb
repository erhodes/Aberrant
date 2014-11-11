#this class represents the relationship between a character and an organization
class CharactersOrganizations < ActiveRecord::Base
	belongs_to :character, class_name: "Character"
	belongs_to :organization, class_name: "Organization"
end