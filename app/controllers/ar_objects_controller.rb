class ArObjectsController < ApplicationController
	
	def new
		if user_signed_in?
			  @ar_object  = current_user.ar_objects.build
		end
  	end
	
	def new_3d
		if user_signed_in?
			  @ar_object  = current_user.ar_objects.build
			  @ar_object_3d = @ar_object.ar3d.build			
		end
	end
	
	
	def create
		@ar_object = current_user.ar_objects.build(params[:ar_object])
		if @ar_object.save
		  flash[:success] = "Arobject created!"
		  redirect_to root_url
		else
		 #@feed_items = []
		 # render 'static_pages/home'
		end
	end
	
	def index
		@ar_objects = current_user.ar_objects
	end
	
	def show
		@ar_object = current_user.ar_objects.find(params[:id])
	end
	
	def destroy
		@ar_object = ArObject.find(params[:id])
		@ar_object.destroy
		redirect_to root_url
  	end
end
