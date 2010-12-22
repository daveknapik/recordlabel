require 'spec_helper'

describe ReleasesController do
  describe "#new" do
    it "should be successful" do
      get :new
      response.should be_success
    end
  end
  
  describe "#create" do
    it "should create a new release" do
      post :create, "release" => {"title" => "Endless Summer", "description" => "Everyone loves Fennesz"}
      assigns(:release).should_not be_nil
      assigns(:release).title.should == "Endless Summer"
    end
    
    it "should be successful" do
      response.should be_success
    end
  end
  
  describe "#index" do
    it "should be successful" do
      response.should be_success
    end
  end
  
  describe "#show" do
    it "should be successful" do
      @release = Factory.create(:release)
      get :show, {:id => @release.id}
      response.should be_success
      assigns(:release).should_not be_nil
    end
  end
  
  describe "#edit" do
    it "should be successful" do
      #@release = mock_model(Release)
      @release = Factory.build(:release)
      Release.should_receive(:find).and_return(@release)
      get :edit, {:id => 1}
      response.should be_success
    end
  end
  
  describe "#destroy" do
    it "should delete a release" do
      Release.destroy_all
      @release = Factory.create(:release)
      Release.find(:all).count.should == 1
      @release.destroy
      Release.find(:all).count.should == 0
    end
  end
end
