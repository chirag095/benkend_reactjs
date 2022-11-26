class Admin::SessionsController < ApplicationController
	
	def new
		render :layout => "admin/empty"
	end

	def register
		render :layout => "admin/empty"
	end	

	def signUp
		SuparAdmin.create(email:params[:email],password:params[:password])
		redirect_to admin_login_path
	end

	def login
        admin = SuparAdmin.find_by_email(params[:email])
		if admin.present? and admin.authenticate(params[:password])
			session[:admin_id] = admin.id 
			flash[:success] = 'Admin Successfully Login'
			redirect_to admin_index_path
			
		else
			flash[:error] = 'Admin Already Exist'
			redirect_to admin_login_path
		end
	end
	 
	def logout 
		session[:admin_id] = nil
		flash[:success] =" Admin Successfully Logout"
		redirect_to admin_login_path
	end
end
