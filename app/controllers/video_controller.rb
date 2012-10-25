class VideoController < ApplicationController

	def index #Action for a Page that displays all current videos in reverse chronological order
		@video = Video.all
	end

	def new #Action for a Form to enter new Youtube URLs
	end

	def create #Action for creating a new table column and Video element following entry into the Form
		v = Video.new
		v.url = params[:url]
		v.title = params[:title]
		v.save

		redirect_to "/videos"
	end

	def show #Action for a Page that shows a particular video based on :id
		@vid = Video.find_by_id(params[:id])
	end

	def edit #Action for a Page to edit Video information
		@vid = Video.find_by_id(params[:id])
	end

	def update #Action that captures Video by :id and updates the information based on 'edit' action
		v = Video.find_by_id(params[:id])
		v.url = params[:url]
		v.title = params [:title]
		v. save

		redirect_to "/videos/#{v.id}"
	end

	def destroy #Action to delete a particular Video
		v = Video.find_by_id(params[:id])
		v.destroy

		redirect_to "/videos"
	end
end