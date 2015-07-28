class CharactersController < ApplicationController
	def index
		

		if params[:search]
			@character=Character.get_character(params[:search])
		else
			@character=Character.first
		end

	end


end
