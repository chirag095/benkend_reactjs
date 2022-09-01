class Api::V1::AmenitiesController < ApplicationController
skip_forgery_protection
	def amenity_list
		@amenities = Amenity.all
		render json:{code:200,message:"amenities list",amenities:@amenities}
    end

def create_amenity
  @amenities = Amenity.create(title:params[:title],image:params[:image])
    render json:{code:202,message:"amenities create",amenities:@amenities}
  end

def update_amenity
      @amenities = Amenity.find_by_id(params[:id])
      @amenities.update!(title:params[:title],image:params[:image])
      render json:{code:203,message:"amenities update",amenities:@amenities}
  end

def delete_amenity
        @amenities = Amenity.find_by_id(params[:delete_id])
        p @amenities
        @amenities.destroy
        render json:{code:204,message:"delete"}
     end    

end

