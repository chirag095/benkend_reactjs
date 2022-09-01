class Api::V1::CitiesController < ApplicationController
skip_forgery_protection
include ActiveStorage::SetCurrent
def cities_list
	@cities = CityL.all
    render json: @cities, include: [image: {methods: :service_url}]
	# render json:{code:200,message:"City List",cities:@cities,include:[image: {methods: :service_url}]}
end

def cities_create
  @cities = CityL.create(title:params[:title],image:params[:image])
    render json:{code:201,message:"City Create",cities:@cities}
  end

def cities_update
      @cities = CityL.find_by_id(params[:id])
      @cities.update!(title:params[:title],image:params[:image])
      render json:{code:202,message:"City Update",cities:@cities}
  end


end

