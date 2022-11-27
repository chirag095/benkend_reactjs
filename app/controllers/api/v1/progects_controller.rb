class Api::V1::ProgectsController < Api::V1::ApplicationsController
    # skip_forgery_protection
    include ActiveStorage::SetCurrent
	def project_list
		@projects = Project.all
		render json:{code:200,message:"project list",projects:@projects}
    end

    def details_project

        @project = Project.find_by_slug(params[:id])
        res = []
        galleries = []
        
        if @project.present?
           amenity = @project.amenity.title
           seo_title = @project.seo.title
           seo_description = @project.seo.description
           seo_keyword = @project.seo.keyword
           t = @project.highlight.title
           t1 = @project.highlight.title1
           t2 = @project.highlight.title2
           t3 = @project.highlight.title3
           t4 = @project.highlight.title4
           t5 = @project.highlight.title5
           t6 = @project.highlight.title6
           t7 = @project.highlight.title7
           @project.flats.each do |flat|
            res << flat.as_json(only:[:id,:title,:carpet_area,:price])
           end
            @logo = @project.logo.as_json(only:[:id,:Contact,:country_code],include: [image: {methods: :service_url}])
           

           @project.galleries.each do |g|
            galleries << g.as_json(only:[:id],include: [image: {methods: :service_url}])
           end
           data = @project.as_json(only:[:id,:title,:project_type,:assets_type,:image,:site_Plan_content,:project_overview,:location_map_content,:new_title,:possession_date,:site_Plan_content,:project_features,:launch_date]).merge(amenity:amenity,seo_title:seo_title,seo_description:seo_description,seo_keyword:seo_keyword,t:t,title1:t1,title2:t2,title3:t3,title4:t4,title5:t5,title6:t6,title7:t7,flats:res,gallary:galleries,logo:@logo)
           render json:{code:200,message:"success",project:data }
        else  
           render json:{code:402,message:"please provide valid project Id?"}
        end  
      end
   

    def create_project
       @project = Project.create!(title:params[:title],new_title:params[:new_title],project_type:params[:project_type] ,
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
                              locality_id:params[:locality_id],start_price:params[:start_price],
                              state_id:params[:state_id])
       render json:{code:201,message:"create project",project:@project}
     end  
    
     def update_project
    @projects = Project.find_by_id(params[:project_id])
      @projects.update!(title:params[:title],new_title:params[:new_title],
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
                              locality_id:params[:locality_id],start_price:params[:start_price],
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
                local = pro&.locality&.title
                amenities = pro&.amenity&.title

                data << pro.as_json(only:[:id,:title,:project_overview],include: [image: {methods: :service_url}]).merge(locality:local,amenity:amenities)
             end   
            render json:{code:200,message:"success",project:data }
        else
            render json:{code:402,message:"please provide valid city Id?"}
        end    
    end

    def cities_newshow
        data = []
        local =''
        @city = CityL.find_by_slug(params[:city_id])
        if @city.present?
          @localities = Locality.where("city_l_id=?",@city.id)
            @localities.each do |l|
            data << l.as_json(only:[:id, :title,:slug])
            end   
            render json:{code:200,message:"success",locality:data }
        else
           render json:{code:402,message:"please provide valid city Id?"}
        end    
    end

    def localities_newshow
    data =[]
         @locality = Locality.find_by_slug(params[:locality_id])
        if @locality.present?
            @projects =Project.where("locality_id =? and status=?",@locality.id,true)
            @projects.each do |pro| 
                 locality_title = pro.locality.title
                data << pro.as_json(only:[:id,:title,:project_overview,:start_price,:image,:assets_type,:project_features,:project_status,:project_type,:new_title,:slug]).merge(locality_title:locality_title) 
            end   
            render json:{code:200,message:"success",project:data }
        else
            render json:{code:402,message:"please provide valid Locality Id?"}
        end 
    end 

    def customer_create
       @project = Project.find_by_id(params[:project_id])
       @customers = Customer.create!(name:params[:name],email:params[:email],contact:params[:contact],countery_code: "+91",project_id:@project.id)
        render json:{code:200,message:"success"}
    end      

end
