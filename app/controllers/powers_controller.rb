class PowersController < ApplicationController
	def new
		@power = Power.new
	end

	def index
		@powers = Power.all
	end

	def show
		@power = Power.find(params[:id])
	end

	def create
		@power = Power.new(power_params)
		if @power.save
			redirect_to root_url
		else
			render 'new'
		end
	end

	private
	def power_params
		params.require(:power).permit(:name, :description)
	end
end