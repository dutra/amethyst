require 'spec_helper'

describe HobbiesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'astronomy'" do
    it "returns http success" do
      get 'astronomy'
      response.should be_success
    end
  end

  describe "GET 'cheese_making'" do
    it "returns http success" do
      get 'cheese_making'
      response.should be_success
    end
  end

  describe "GET 'photography'" do
    it "returns http success" do
      get 'photography'
      response.should be_success
    end
  end

  describe "GET 'cycling'" do
    it "returns http success" do
      get 'cycling'
      response.should be_success
    end
  end

end
