class ApplicationController < ActionController::Base
	def index
		@recipes = ['Bolo de cenoura', 'Franguinho top', 'Burgão topzera']
	end
end
