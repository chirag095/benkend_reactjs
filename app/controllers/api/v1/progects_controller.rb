class Api::V1::ProgectsController < Api::V1::ApplicationsController
    # skip_forgery_protection
    include ActiveStorage::SetCurrent
	def project_list
		@projects = Project.all
		render json:{code:200,message:"project list",projects:@projects}
    end

    def details_project

        @project = Project.find_by_title(params[:title])
        
        if @project.present?
           amenity = @project.amenity.title
           t = @project.highlight.title
           t1 = @project.highlight.title1
           
           data = @project.as_json(only:[:id,:title,:project_type,:assets_type,:site_Plan_content,:project_overview,:location_map_content,:possession_date,:site_Plan_content,:project_features,:launch_date],include: [image: {methods: :service_url}]).merge(amenity:amenity,t:t,title1:t1)
           render json:{code:200,message:"success",project:data }
        else  
           render json:{code:402,message:"please provide valid project Id?"}
        end  
      end
   

    def create_project
       @project = Project.create!(title:params[:title], project_type:params[:project_type] ,
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
                              locality_id:params[:locality_id],
                              state_id:params[:state_id])
       render json:{code:201,message:"create project",project:@project}
     end  
    
     def update_project
    @projects = Project.find_by_id(params[:project_id])
      @projects.update!(title:params[:title],
                           project_type:params[:project_type],
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
                              locality_id:params[:locality_id],
                              state_id:params[:state_id])
      render json:{code:203,message:"update",project:@projects}


    end
    def delete_project
      @projects = Project.find_by_id(params[:delete_id])
        p @projects
       @projects.destroy
        render json:{code:204,message:"delete"}
    end

    def cities_show 
    data = []   
    local = ''                                                
        @city = CityL.find_by_id(params[:city_id])  
        if @city.present?
            @projects = Project.where("city_l_id =?",@city.id)  
            @projects.each do |pro|
                local = pro.locality.title
                amenities = pro.amenity.title

                data << pro.as_json(only:[:id,:title,:project_overview],include: [image: {methods: :service_url}]).merge(locality:local,amenity:amenities)
             end   
            render json:{code:200,message:"success",project:data }
        else
            render json:{code:402,message:"please provide valid city Id?"}
        end    
    end

end
