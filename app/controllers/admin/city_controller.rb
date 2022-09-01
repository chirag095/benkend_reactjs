class Admin::CityController < ApplicationController
  def index
   @city = CityL.all
    render :layout => "admin/application"
  end
 def new
    @city = CityL.new
    render :layout => "admin/application"
  end
 
 def create
  @city = CityL.create(title:params[:title],image:params[:image])
    redirect_to admin_city_index_path
  end

  def edit
    @city = CityL.find_by_id(params[:id])
    render :layout => "admin/application"
  end

  def update
      @city = CityL.find_by_id(params[:id])
      @city.update!(title:params[:title],image:params[:image])
      redirect_to admin_city_index_path
  end

  def delete
        @city = CityL.find_by_id(params[:id])
        p @city
        @city.destroy
         redirect_to admin_city_index_path
  end    
end




 

