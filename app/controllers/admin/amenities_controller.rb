class Admin::AmenitiesController < ApplicationController
  def index
     
     @amenities = Amenity.all
      render :layout => "admin/application"
  end
 
 def new
    render :layout => "admin/application"
  end
 
 def create
  @amenities = Amenity.create(title:params[:title],image:params[:image])
    redirect_to admin_amenities_index_path
  end

  def edit
    @amenities = Amenity.find_by_id(params[:id])
    render :layout => "admin/application"
  end

  def update
      @amenities = Amenity.find_by_id(params[:id])
      @amenities.update!(title:params[:title],image:params[:image])
      redirect_to admin_amenities_index_path
  end

  def delete
        @amenities = Amenity.find_by_id(params[:id])
        p @amenities
        @amenities.destroy
         redirect_to admin_amenities_index_path
     end    

  end
