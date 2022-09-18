class Admin::GallerysController < ApplicationController

	def index
		@project= Project.find_by_id(params[:project_id])
		@gallerys = @project.galleries
		render :layout => "admin/application"
	end

	def new
	    @project= Project.find_by_id(params[:project_id])
	    render :layout => "admin/application"

	 end

	def create
	    @project= Project.find_by_id(params[:project_id])
	    @gallerys = Gallery.create!(image:params[:image],project_id:params[:project_id])
	    redirect_to admin_gallerys_index_path
	end
end
