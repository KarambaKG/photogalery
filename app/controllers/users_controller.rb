class UsersController < ApplicationController
	def show
		@pictures = Picture.all
		@user = User.find(params[:id])
	end
end
