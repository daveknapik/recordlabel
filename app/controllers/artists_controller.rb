class ArtistsController < ApplicationController

def show
  @artist = Artist.find params[:id]
end

def edit
  @artist = Artist.find params[:id]
end

def update
  @artist = Artist.find params[:id]
  
  if (@artist.update_attributes(params[:artist]))
    flash[:notice] = "#{@artist.name} saved."
    redirect_to artist_path(@artist)
  end
end

end