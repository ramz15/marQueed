require 'spec_helper'

describe ProfilesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'images'" do
    it "returns http success" do
      get 'images'
      response.should be_success
    end
  end

  describe "GET 'projects'" do
    it "returns http success" do
      get 'projects'
      response.should be_success
    end
  end

end
