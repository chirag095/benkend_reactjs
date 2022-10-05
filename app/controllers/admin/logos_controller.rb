class Admin::LogosController < ApplicationController

def index
	@logos = Logo.all
	 render :layout => "admin/application"
	end

 def new
       @logos = Logo.new

         render :layout => "admin/application"
    end


def create
  	    Logo.create(Contact:params[:Contact],country_code:params[:country_code],image:params[:image])
       redirect_to admin_logos_index_path
   end


def edit
      @logo = Logo.find_by_id(params[:id])
     render :layout => "admin/application"
   end


def update
  @logo = Logo.find_by_id(params[:id])
  @logo.update(Contact:params[:Contact],country_code:params[:country_code],image:params[:image])
       redirect_to admin_logos_index_path

     end

def delete
  @logo = Logo.find_by_id(params[:id])
  @logo.destroy
  redirect_to admin_logos_index_path
   end

 end