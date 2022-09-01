class Admin::LocalitiesController < ApplicationController
def index
     
     @localities = Locality.all
      render :layout => "admin/application"
  end
 
 def new
    render :layout => "admin/application"
  end
 
 def create
  @localities = Locality.create(title:params[:title])
    redirect_to admin_localities_index_path
  end

  def edit
    @localities = Locality.find_by_id(params[:id])
    render :layout => "admin/application"
  end

  def update
      @localities = Locality.find_by_id(params[:id])
      @localities.update!(title:params[:title])
      redirect_to admin_localities_index_path
  end

  def delete
        @localities = Locality.find_by_id(params[:id])
        p @localities
        @localities.destroy
         redirect_to admin_localities_index_path
     end    

end
