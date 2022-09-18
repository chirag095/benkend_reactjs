class Admin::ProjectsController < ApplicationController
	


  def index
    @projects = Project.all
    render :layout => "admin/application"
  end

  def new
    @projects = Project.new
    @cities = CityL.all
    @builders = Builder.all
    @localities = Locality.all
    @amenities = Amenity.all
    @states = State.all
    @seo_tools= Seo.all
    @highlights=Highlight.all

    render :layout => "admin/application"
  end

  def show
    @cities = CityL.all
    @builders = Builder.all
    @localities = Locality.all
    @amenities = Amenity.all
    @states = State.all
    @seo_tools= Seo.all
    @highlights=Highlight.all
    @projects = Project.friendly.find(params[:id])
     render :layout => "admin/application"
  end

 def create
  @projects = Project.create!(title:params[:title], project_type:params[:project_type] ,image:params[:image],
                           assets_type:params[:assets_type] ,
                           project_status:params[:project_status],
                            launch_date:params[:launch_date] ,
                            possession_date:params[:possession_date],
                             project_overview:params[:project_overview] ,
                             project_features:params[:project_features] ,
                             location_map_content:params[:location_map_content] ,
                              site_Plan_content:params[:site_Plan_content],
                              amenity_id:params[:amenity_id],
                              builder_id:params[:builder_id],
                              city_l_id:params[:city_l_id],
                              locality_id:params[:locality_id],seo_id:params[:seo_id],
                              state_id:params[:state_id],highlight_id:params[:highlights_id])
    redirect_to admin_projects_index_path
  end

  def edit
    @cities = CityL.all
    @builders = Builder.all
    @localities = Locality.all
    @amenities = Amenity.all
    @states = State.all
    @seo_tools = Seo.all
    @highlights=Highlight.all
    @projects = Project.friendly.find(params[:id])
    render :layout => "admin/application"
  end

  def update
    @projects = Project.find_by_id(params[:id])
      @projects.update!(title:params[:title],image:params[:image],
                           project_type:params[:project_type],image:params[:image],
                              assets_type:params[:assets_type] ,
                           project_status:params[:project_status],
                            launch_date:params[:launch_date] ,
                            possession_date:params[:possession_date],
                             project_overview:params[:project_overview] ,
                             project_features:params[:project_features] ,
                             location_map_content:params[:location_map_content] ,
                              site_Plan_content:params[:site_Plan_content],
                              amenity_id:params[:amenity_id],
                              builder_id:params[:builder_id],
                              city_l_id:params[:city_l_id],
                              locality_id:params[:locality_id],seo_id:params[:seo_id],
                              state_id:params[:state_id],highlight_id:params[:highlights_id])
      redirect_to admin_projects_index_path
  end

  def delete
    @projects = Project.find_by_id(params[:id])
    @projects.destroy
    redirect_to admin_projects_index_path
  end  
  def update_status
      @project = Project.find_by_id(params[:id])
      p @project
      @project.update!(status:!@project.status)
      redirect_to admin_projects_index_path
  end      

  def flatstypes
    @project= Project.find_by_id(params[:project_id])

     @flats = @project.flats
     render :layout => "admin/application"
  end


  def flatsnew
    @project= Project.find_by_id(params[:project_id])

    @flat = Flat.new
    render :layout => "admin/application"
  end

  def flatscreate

  @project= Project.find_by_id(params[:project_id])
    @flat=Flat.create!(title:params[:title],carpet_area:params[:carpet_area],price:params[:price],project_id:params[:project_id])
    redirect_to admin_projects_flatstype_path(project_id:@project.id)
  end

  def flatsedit
    @project= Project.find_by_id(params[:project_id])
   
    @flat= Flat.find_by_id(params[:flat_id])
    render :layout => "admin/application"
  end

  def flatsupdate
    @project= Project.find_by_id(params[:project_id])
    @flat= Flat.find_by_id(params[:flat_id])
    @flat.update!(title:params[:title],carpet_area:params[:carpet_area],price:params[:price],project_id:params[:project_id])
      redirect_to admin_projects_flatstype_path(project_id:@project.id)
  end

  def flatsdelete
    @project= Project.find_by_id(params[:project_id])
    @flat = Flat.find_by_id(params[:id])
    @flat.destroy
    redirect_to admin_projects_flatstype_path(project_id:@project.id)
  end 
end
