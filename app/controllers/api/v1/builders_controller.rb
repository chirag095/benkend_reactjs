class Api::V1::BuildersController < ApplicationController
skip_forgery_protection
def builders_list
	@builders = Builder.all
	render json:{code:200,message:"builders_list",builders:@builders}
   
   end
def create_builders
	@builders = Builder.create(title:params[:title])
    render json:{code:201,message:"builders_list",builders:@builders} 
  end

def update_builders
      @builders = Builder.find_by_id(params[:id])
      @builders.update!(title:params[:title])
      render json:{code:202,message:"builders_list",builders:@builders} 
  end
def delete_builders
        @builders = Builder.find_by_id(params[:id])
        p @builders
        @builders.destroy
        render json:{code:203,message:"delete"} 
     end    
end