class Api::V1::ApplicationsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
    
  def create_token
    token = SecureRandom.uuid.gsub(/\-/,'')
  end

	# def time_zone
	# 	time_zone = request.headers["timeZone"]
 #        Time.zone = time_zone
	# end	

	# def require_visitor
	# 	initSidekiq
	# 	unless user_logged_in?
	# 		unless guest?
	# 			# sendResponse('guestExpired',@loadedData["invalid_guest"],{})
	# 			 render :json=> {code:303,message:"Your account is not activated. Please contact support team."}  
	# 		else
	# 			@visitor = @guest
	# 			begin
	# 			  Time.zone = @visitor.timeZone
	# 			rescue Exception => e
	# 			end
	# 		end
	# 	else
			  
	# 		begin
	# 		  Time.zone = @currentSession.timeZone
	# 		rescue Exception => e
	# 		end
	# 	end
	# end

	# def checkSessionToken
	# 	initSidekiq
	# 	unless user_logged_in?
	# 		sendResponse("sessionExpired",@loadedData["session"],{})
	# 	else

	# 		if (@session.is_active == true )
	# 		   @visitor = @user
	# 	    else
 #               render :json=> {code:303,message:"Your account is not activated. Please contact support team."}  
 #            end  
	# 		# updating device details
	# 		if request.headers["deviceType"].present? and request.headers["deviceId"].present? and request.headers["deviceModel"].present?
	# 			@session.update!({
	# 				device_type: request.headers["deviceType"],
	# 				device_id: request.headers["deviceId"],
	# 				device_model: request.headers["deviceModel"],
	# 				time_zone: request.headers["timeZone"]
	# 			})  
	# 		end
		     
	# 	end
	# end

	def user_logged_in?
		@session = Auth.find_by_sessionToken(request.headers["sessionToken"]) 
	    @user = @session.user if @session
	end
end
