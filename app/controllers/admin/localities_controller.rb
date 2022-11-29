class Admin::LocalitiesController < ApplicationController
  before_action :loggedin_admin
def index
     
     @localities = Locality.all
      render :layout => "admin/application"
  end
 
 def new
  @cities = CityL.all
  @seo_tools= Seo.all
    render :layout => "admin/application"
  end
 
 def create
 
  @localities = Locality.create(title:params[:title],city_l_id:params[:city_l_id],seo_id:params[:seo_id])
    redirect_to admin_localities_index_path
  end

  def edit
     @cities = CityL.all
     @seo_tools= Seo.all
    @localities = Locality.find_by_id(params[:id])
    render :layout => "admin/application"
  end

  def update
      @localities = Locality.find_by_id(params[:id])
      @localities.update!(title:params[:title],city_l_id:params[:city_l_id],seo_id:params[:seo_id])
      redirect_to admin_localities_index_path
  end

  def delete
        @localities = Locality.find_by_id(params[:id])
        p @localities
        @localities.destroy
         redirect_to admin_localities_index_path
     end    

end
