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
  
  describe "#edit" do
    it "should be successful" do
      @artist = Factory.build(:artist)
      Artist.should_receive(:find).and_return(@artist)
      get :edit, {:id => 1}
      response.should be_success
    end
  end
  
  describe "#update" do
    context "with valid params" do
      before(:each) do
        @artist = Factory.create(:artist)
        Artist.should_receive(:find).with(1).and_return(@artist)
        @artist.stub(:update_attributes).and_return(true)
      end
      
      it "should find and return the artist object" do
        put :update, {:id => 1}
      end
      
      it "should update the artist's attributes" do
        @artist.should_receive(:update_attributes).and_return(true)
        put :update, {:id => 1, :name => "Dave Knapik", :bio => "Minister of Caps"}
      end

      it "should redirect you to the artist page" do
        put :update, {:id => 1}
        response.should redirect_to(artist_path(assigns[:artist]))
      end
    end
  end
end
