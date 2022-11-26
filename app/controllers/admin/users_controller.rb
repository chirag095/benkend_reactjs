class Admin::UsersController < ApplicationController
   before_action :loggedin_admin
	def index
		@users = Customer.all 
		 render :layout => "admin/application"
	end
end
