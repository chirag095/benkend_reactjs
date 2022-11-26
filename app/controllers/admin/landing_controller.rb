class Admin::LandingController < ApplicationController
	before_action :loggedin_admin
	def index
		render :layout => "admin/empty"
	end	
end
