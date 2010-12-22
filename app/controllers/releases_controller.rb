class ReleasesController < ApplicationController
  def index
    @releases = Release.find(:all,:order => "created_at desc")
  end
  
  def show
    @release = Release.find params[:id]
  end
  
  def new
    @title = "New Release"
    @release = Release.new
  end
  
  def create
    @release = Release.new(params[:release])
    
    if @release.save
      respond_to do |format|
        format.html {redirect_to releases_path}
      end
    end
  end
  
  def edit
    @title = "Edit Release"
    @release = Release.find params[:id]
  end
  
  def update
    @release = Release.find params[:id]
    
    if (@release.update_attributes(params[:release]))
      flash[:notice] = "#{@release.title} saved."
      redirect_to releases_path
    end
  end
  
  def destroy
    @release = Release.find params[:id]
    @release.destroy
    
    respond_to do |format|
      format.html {
        flash[:notice] = "Release deleted"
        redirect_to releases_path
      }
      format.js {render :json => @release}
    end
  end
  
  def confirm_destroy
    @title = "Confirm Delete Release"
    @release = Release.find params[:id]
  end
end
