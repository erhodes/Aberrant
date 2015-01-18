class CharactersController < ApplicationController
	def new
		@character = Character.new
	end

	def index
		@characters = Character.all
	end

	def show
		@character = Character.find(params[:id])
		@powers_known = @character.known_powers
	end

	def create
		@character = Character.new(character_params)
		if @character.save
			redirect_to characters_url
		else
			render 'new'
		end
	end

	def destroy
		Character.find(params[:id]).destroy
		redirect_to characters_url
	end

	private

	def character_params
		params.require(:character).permit(:name, :strength, :dexterity, :stamina,
			:intelligence, :wits, :perception, :charisma, :manipulation, :appearance, :description)
	end
end