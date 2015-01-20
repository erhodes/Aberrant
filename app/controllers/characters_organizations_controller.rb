class CharactersOrganizationsController < ApplicationController
	def create
		@organization = Organization.find(params[:organization_id])
		@character = Character.find(params[:characters_organization][:character_id])
		@organization.members.create(character_id: @character.id, title: "CFO")
		redirect_to @organization
	end

	def destroy
		@organization = CharactersOrganization.find(params[:id]).organization
		@character = CharactersOrganization.find(params[:id]).character
		@organization.members.find_by(character_id: @character.id).destroy

		redirect_to @organization
	end
end