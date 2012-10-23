#THIS IS MINE!  THIS IS MINE!  THIS IS MINE!  THIS IS MINE!  THIS IS MINE!  THIS IS MINE!

class PicturesController < ApplicationController

	def index
		@all_pictures = Picture.all
	end

	def new
	end

	def create
		single_picture = Picture.new
d		single_picture["url"] = params[:url]
		single_picture["title"] = params[:title]
		single_picture.save

		redirect_to all_pictures_path
	end

	def show
		@single_picture = Picture.find_by_id(params[:id])
	end
end