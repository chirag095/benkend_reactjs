class Admin::CityController < ApplicationController
  before_action :loggedin_admin
  def index
   @city = CityL.all
  render :layout => "admin/application"
  end
 def new
    @city = CityL.new
    @seo_tools= Seo.all
    render :layout => "admin/application"
  end
 
 def create
  @city = CityL.create(title:params[:title],image:params[:image],seo_id:params[:seo_id])
    redirect_to admin_city_index_path
  end



  def edit
    @seo_tools= Seo.all
    @city = CityL.find_by_id(params[:id])
    render :layout => "admin/application"
  end

  def update
      @city = CityL.find_by_id(params[:id])
      @city.update!(title:params[:title],image:params[:image],seo_id:params[:seo_id])
      redirect_to admin_city_index_path
  end

  def delete
        @city = CityL.find_by_id(params[:id])
        p @city
        @city.destroy
         redirect_to admin_city_index_path
  end    
end




 

