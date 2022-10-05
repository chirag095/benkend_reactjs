class Admin::UsersController < ApplicationController

	def index
		@users = Customer.all 
		 render :layout => "admin/application"
	end
end
