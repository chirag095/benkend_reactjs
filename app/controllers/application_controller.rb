class ApplicationController < ActionController::Base
	include ApplicationHelper
	def loggedin_admin
		@admin = current_admin
	
	  	unless @admin

		    flash[:error] = "You Need To Login First"
		    redirect_to admin_login_path
	    end
	end
end
