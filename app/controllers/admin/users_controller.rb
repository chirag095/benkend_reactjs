class Admin::UsersController < ApplicationController
   before_action :loggedin_admin
	def index

		@users = Customer.order("created_at DESC").paginate(:page => params[:page],:per_page =>10)
		  
		 render :layout => "admin/application"
	end

	def delete
		
        @users = Customer.where("id IN (?)",params[:user])
        @users.destroy_all
         redirect_to admin_index_path

     end    




end


