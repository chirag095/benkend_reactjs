class Api::V1::SessionsController < Api::V1::ApplicationsController
# before_action :checkSessionToken, :only=>[:logout]
# before_action :require_visitor, only: [:login,:sign_up]



    def signup
        @user = User.find_by_email(params[:email])
        if !@user
             @user = User.create!(email:params[:email],username:params[:username],password:params[:password]) 
             @token = create_token
             auth = @user.sessions.create!(token:@token) 
             render json:{code:200,message:"signup sussesfuly",user:@user.as_json(only:[:id,:email,:username]).merge(sessionToken:auth.token)}
        else
          render json:{code:301,message:"user all ready exist"}
        end 
    end

    
       
  def login
    @user = User.where("email = (?) ",params[:email]).first
         if @user
      @token = create_token
     auth = @user.sessions.create!(token:@token) 
    render json:{code:201,message:"login sussesfuly",user:@user.as_json(only:[:id,:email,:username]).merge(sessionToken:auth.token)}
           
           
    else
           
           render json:{code:302,message:"user all ready exist"}
        end
    end

   # def logout 
   #      session[:admin_id] = nil
   #      flash[:success] =" Admin Successfully Logout"
      
   #  end

end
