class Organization < ActiveRecord::Base
	has_many :members, class_name: "CharactersOrganizations",
						foreign_key: "organization_id",
						dependent: :destroy
end