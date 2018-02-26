class HomeController < ApplicationController
	layout 'main'
	def index
		@users = User.count
	end
end
