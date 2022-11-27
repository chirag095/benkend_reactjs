Rails.application.routes.draw do
 
  

   #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do 
  
   get "/index" => "users#index",as: "index"
   get "/login" => "sessions#new",as: "login"
   post "/login/user" => "sessions#login",as: "login_user"
   post "/signUp" =>"sessions#signUp",as: "signUp" 
   get "/logout" => "sessions#logout"
   get "/register" => "sessions#register",as:"register"
   
   get '/city/index' => "city#index", as:"city_index"
   get "/city/new" => "city#new",as:"city_new"
   post "/city/create" => "city#create",as: "city_create"
   get "/city/edit/:id" => "city#edit",as:"city_edit"
   get "/city/delete/:id" => "city#delete",as:"city_delete"
   post "/city/update/:id" => "city#update",as:"city_update"
  
  get "/amenities/index" => "amenities#index", as:"amenities_index"
  get "/amenities/new" => "amenities#new", as:"amenities_new" 
  post "/amenities/create" => "amenities#create", as:"amenities_create"
  get "/amenities/edit/:id" => "amenities#edit",as:"amenities_edit"
  get "/amenities/delete/:id" => "amenities#delete",as:"amenities_delete"
  post "/amenities/update/:id" => "amenities#update",as:"amenities_update"
  
  get "/states/index" => "states#index",as:"states_index"
  get "/states/new" => "states#new",as: "states_new"
  post "/states/create" => "states#create",as:"states_create"
  get "/states/edit/:id" => "states#edit",as:"states_edit" 
  get "/states/delete/:id" => "states#delete",as:"states_delete"
  post "/states/update/:id" => "states#update",as:"states_update"
  
  get "/localities/index" => "localities#index",as:"localities_index"
  get "/localities/new" => "localities#new",as: "localities_new"
  post "/localities/create" => "localities#create",as:"localities_create"
  get "/localities/edit/:id" => "localities#edit",as:"localities_edit" 
  get "/localities/delete/:id" => "localities#delete",as:"localities_delete"
  post "/localities/update/:id" => "localities#update",as:"localities_update"

  get "/builders/index" => "builders#index",as:"builders_index"
  get "/builders/new" => "builders#new",as: "builders_new"
  post "/builders/create" => "builders#create",as:"builders_create"
  get "/builders/edit/:id" => "builders#edit",as:"builders_edit" 
  get "/builders/delete/:id" => "builders#delete",as:"builders_delete"
  post "/builders/update/:id" => "builders#update",as:"builders_update"

  get "/projects/index" => "projects#index",as:"projects_index"
  get "/projects/new" => "projects#new",as: "projects_new"
  post "/projects/create" => "projects#create",as:"projects_create"
  get "/projects/edit/:id" => "projects#edit",as:"projects_edit" 
  get "/projects/delete/:id" => "projects#delete",as:"projects_delete"
  post "/projects/update/:id" => "projects#update",as:"projects_update"
  

  get"/projects/flatstype/:project_id" => "projects#flatstypes",as:"projects_flatstype"
  get "/projects/flatsnew/:project_id" => "projects#flatsnew",as:"projects_flatsnew"
  post "/projects/flatscreate" =>"projects#flatscreate",as:"project_flatscreate"
  get "/projects/flatsedit/:project_id/:flat_id"=>"projects#flatsedit",as:"project_flatsedit"
  post"/projects/flatsupdate"=>"projects#flatsupdate",as:"project_flatsupdate"
  get "/projects/flatsdelete"=>"projects#flatsdelete",as:"project_flatsdelete"

  

  get "/gallerys/index/:project_id"=> "gallerys#index",as:"gallerys_index"
  get"/gallerys/new/:project_id" => "gallerys#new",as:"gallerys_new"
  post"/gallerys/create/:project_id"=> "gallerys#create",as:"gallerys_create"
  get "/gallerys/edit/:project_id"=> "gallerys#edit",as:"gallerys_edit"
   get "/gallerys/delete/:project_id"=> "gallerys#delete",as:"gallerys_delete"
   post "/gallerys/update/:project_id"=>"gallerys#update",as:"gallerys_update"
  

  get "update/status/:id" => "projects#update_status",as:"update_status"
  get "/seo_tools/index" => "seo_tools#index", as: "seo_tools_index"
   get "/seo_tools/new" => "seo_tools#new", as: "seo_tools_new"
    post "/seo_tools/create" => "seo_tools#create",as:"seo_tools_create"
    get "/seo_tools/edit/:id" => "seo_tools#edit", as: "seo_tools_edit"
     get "/seo_tools/delete/:id" => "seo_tools#delete",as:"seo_tools_delete"
     post "/seo_tools/update/:id" => "seo_tools#update",as:"seo_tools_update"



     get "/highlights/index" => "highlights#index",as:"highlights_index"
     get "/highlights/new" => "highlights#new",as:"highlights_new"
     post "/highlights/create" => "highlights#create",as:"highlights_create"
     post "/highlights/update" => "highlights#update",as:"highlights_update"
     get "/highlights/edit/:id" =>"highlights#edit",as:"highlights_edit"
     get"/highlights/delete/:id" =>"highlights#delete",as:"highlights_delete"



     get "/logos/index"=> "logos#index",as:"logos_index"
     get"/logos/new"=> "logos#new",as:"logos_new"
     post"/logos/create"=> "logos#create",as:"logos_create"
     post"/logos/update"=> "logos#update",as:"logos_update"
     get"/logos/edit/:id"=> "logos#edit",as:"logos_edit"
     get"/logos/delete/:id"=> "logos#delete",as:"logos_delete"

   # resources :projects 
  get "/landing" => "landing#index"
  end
   namespace :api, defaults: {format: 'json'}do
       namespace :v1 do
       post "/projects" => "progects#details_project"
       get "/projects/list" => "progects#project_list"
       post "create/project" => "progects#create_project"
       post "update/project" => "progects#update_project"
       get "delete/project" => "progects#delete_project"
       post "show/cities" => "progects#cities_show" 
       post "newshow/cities" =>"progects#cities_newshow"
       post "newshow/localities"=>"progects#localities_newshow"
       post "customer/create" => "progects#customer_create"

       get "/amenities" => "amenities#amenity_list"
       post "create/amenities" => "amenities#create_amenity"
       get "update/amenities" => "amenities#update_amenity"
       get "delete/amenities"=> "amenities#delete_amenity"
           
       get "/builders" => "builders#builders_list"
       post "create/builders"=> "builders#create_builders"
       post "update/builders"=> "builders#update_builders" 
       get "delete/builders"=> "builders#delete_builders"

       get "/states"=> "states#states_list"
       post "create/states"=> "states#states_create"
       post "update/states"=> "states#states_update"

       post  "signup" => "sessions#signup"
       post  "login" =>  "sessions#login"

       get "/cities" => "cities#cities_list"
       post "create/cities"=> "cities#cities_create"
       post  "update/cities"=> "cities#cities_update"


       get "/highlights" => "highlights#highlights_list"
       post "create/highlights" => "highlights#highlights_create"
       post "update/highlights" => "highlights#highlights_update"
       get "delete/highlights"=> "highlights#highlights_delete"


       end
    end    
end 

