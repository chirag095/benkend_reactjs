class Admin::HighlightsController < ApplicationController
  before_action :loggedin_admin
  def index
	@highlights = Highlight.all
	 render :layout => "admin/application"
  end

    def new
         render :layout => "admin/application"
    end

  def create
  	   @highlights = Highlight.create(title:params[:title],
        title1:params[:title1],
        title2:params[:title2],
        title3:params[:title3],
        title4:params[:title4],
        title5:params[:title5],
        title6:params[:title6],
        title7:params[:title7])
       redirect_to admin_highlights_index_path
   end

   def edit
      @highlights = Highlight.find_by_id(params[:id])
     render :layout => "admin/application"
   end

def update
    @highlights = Highlight.find_by_id(params[:id])
     @highlights.update!(title:params[:title],
        title1:params[:title1],
        title2:params[:title2],
        title3:params[:title3],
        title4:params[:title4],
        title5:params[:title5],
        title6:params[:title6],
        title7:params[:title7])
     redirect_to admin_highlights_index_path
   end

   def delete
    @highlights = Highlight.find_by_id(params[:id])
    p@highlights
    @highlights.destroy
    redirect_to admin_highlights_index_path
end

end