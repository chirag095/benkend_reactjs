class Admin::SeoToolsController < ApplicationController
    before_action :loggedin_admin
def index
   @seo_tools = Seo.all
    render :layout => "admin/application"
  end

def new
    @seo_tools = Seo.new
    render :layout => "admin/application"
  end

def create
  @seo_tools = Seo.create(title:params[:title],description:params[:description],keyword:params[:keyword])
    redirect_to admin_seo_tools_index_path
  end

  def edit
    @seo_tools = Seo.find_by_id(params[:id])
    render :layout => "admin/application"
  end


 def update
      @seo_tools = Seo.find_by_id(params[:id])
      @seo_tools.update!(title:params[:title],description:params[:description],keyword:params[:keyword])
      redirect_to admin_seo_tools_index_path
  end

def delete
        @seo_tools = Seo.find_by_id(params[:id])
        p @seo_tools
        @seo_tools.destroy
         redirect_to admin_seo_tools_index_path
     end    

end
