class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id])
	end

	def new
		@picture = Picture.new
		@pictures = Picture.all
	end

	def create
		@picture = Picture.create(picture_params)

		if @picture.save
      		redirect_to pictures_path
    	else
			render 'new'
		end
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])

		if @picture.update(picture_params)
			redirect_to pictures_path
		else
			render 'edit'
		end
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_path
	end 	

	private

	def picture_params
		params.require(:picture).permit(:image, :title, :user_id)
	end
end
