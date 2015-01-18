class Organization < ActiveRecord::Base
	has_many :members, class_name: "CharactersOrganization",
						foreign_key: "organization_id",
						dependent: :destroy
end