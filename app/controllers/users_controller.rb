class UsersController < ApplicationController

	def index
		@users = User.all
	end
	
	def show
		@user = User.find(params[:id])
		@ar_objects = @user.ar_objects.all #paginate(page: params[:page], :per_page => 8)	
	end
	
	def ar_objects
		@user = User.find(params[:id])
		@ar_objects = @user.ar_objects.all #paginate(page: params[:page], :per_page => 8)	
	end
end
