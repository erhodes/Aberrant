class CharactersController < ApplicationController
	def new
		@character = Character.new
	end

	def index
		@characters = Character.all
	end

	def show
		@character = Character.find(params[:id])
	end

	def create
		@character = Character.new(character_params)
		if @character.save
			redirect_to root_url
		else
			render 'new'
		end
	end

	def destroy
		Character.find(params[:id]).destroy
		redirect_to root_url
	end

	private

	def character_params
		params.require(:character).permit(:name)
	end
end