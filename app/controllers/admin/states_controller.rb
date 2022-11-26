class Admin::StatesController < ApplicationController
  before_action :loggedin_admin
def index
	@states = State.all
	render :layout => "admin/application"
end

def new
    render :layout => "admin/application"
  end

def create
  @states = State.create(title:params[:title])
    redirect_to admin_states_index_path
  end

  def edit
    @states = State.find_by_id(params[:id])
    render :layout => "admin/application"
  end

  def update
      @states = State.find_by_id(params[:id])
      @states.update!(title:params[:title])
      redirect_to admin_states_index_path
  end

  def delete
        @states = State.find_by_id(params[:id])
        p @states
        @states.destroy
         redirect_to admin_states_index_path
     end    

end
