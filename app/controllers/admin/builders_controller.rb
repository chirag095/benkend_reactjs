class Admin::BuildersController < ApplicationController
def index
     
     @builders = Builder.all
      render :layout => "admin/application"
  end
 
 def new
    render :layout => "admin/application"
  end
 
 def create
  @builders = Builder.create(title:params[:title])
    redirect_to admin_builders_index_path
  end

  def edit
    @builders = Builder.find_by_id(params[:id])
    render :layout => "admin/application"
  end

  def update
      @builders = Builder.find_by_id(params[:id])
      @builders.update!(title:params[:title])
      redirect_to admin_builders_index_path
  end

  def delete
        @builders = Builder.find_by_id(params[:id])
        p @builders
        @builders.destroy
         redirect_to admin_builders_index_path
     end    
end
