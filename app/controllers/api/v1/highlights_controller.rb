class Api::V1::HighlightsController < ApplicationController
skip_forgery_protection

def highlights_list
	@highlights = Highlight.all
	render json:{code:200,message:"highlights_list",highlights:@highlights}
end

def highlights_create
	@highlights = Highlight.create(title:params[:title],
        title1:params[:title1],
        title2:params[:title2],
        title3:params[:title3],
        title4:params[:title4],
        title5:params[:title5],
        title6:params[:title6],
        title7:params[:title7])
render json:{code:201,message:"highlights_list",highlights:@highlights}
end

def highlights_update
	@highlights = Highlight.find_by_id(params[:id])
     @highlights.update!(title:params[:title],
        title1:params[:title1],
        title2:params[:title2],
        title3:params[:title3],
        title4:params[:title4],
        title5:params[:title5],
        title6:params[:title6],
        title7:params[:title7])
render json:{code:202,message:"highlights_list",highlights:@highlights}

end

def highlights_delete
@highlights = Highlight.find_by_id(params[:id])
        p @highlights
        @highlights.destroy
        render json:{code:203,message:"delete"} 
     end    





end
