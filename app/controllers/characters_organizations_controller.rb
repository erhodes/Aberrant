class CharactersOrganizationsController < ApplicationController
	def create
		@organization = Organization.find(params[:organization_id])
		@character = Character.find(params[:characters_organization][:character_id])
		@organization.members.create(character_id: @character.id, title: "CFO")
		redirect_to organizations_url
	end

	def destroy
	end
end