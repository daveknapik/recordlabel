require 'spec_helper'

describe ArtistsController do
  
  describe "#show" do
    it "should be successful" do
      @artist = Factory.create(:artist)
      get :show, {:id => @artist.id}
      response.should be_success
      assigns(:artist).should_not be_nil
    end
  end
  
end
