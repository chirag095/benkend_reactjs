class Admin::GallerysController < ApplicationController
    before_action :loggedin_admin
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
		@gallerys = Gallery.create!(image:params[:image],project_id:params[:project_id])
	    redirect_to admin_gallerys_index_path
	end


	def edit
      @gallerys = Gallery.find_by_id(params[:id])
     render :layout => "admin/application"
   end

   def update
  @gallerys = Gallery.find_by_id(params[:id])
  @gallerys.update!(image:params[:image],project_id:params[:project_id])
       redirect_to admin_gallerys_index_path

     end

def delete
  @gallerys = Gallery.find_by_id(params[:project_id])
  @gallerys.destroy
  redirect_to admin_gallerys_index_url
   end


end
