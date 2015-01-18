#this class represents the relationship between a character and an organization
class CharactersOrganization < ActiveRecord::Base
	belongs_to :character, class_name: "Character"
	belongs_to :organization, class_name: "Organization"
end