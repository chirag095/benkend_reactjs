class Api::V1::StatesController < ApplicationController
skip_forgery_protection
def states_list
	@states = State.all
	render json:{code:200,message:"State list",states:@states}
end

def states_create
  @states = State.create(title:params[:title])
    render json:{code:201,message:"State Create",states:@states}
  end

def states_update
      @states = State.find_by_id(params[:id])
      @states.update!(title:params[:title])
      render json:{code:202,message:"State Update",states:@states}
  end
end
