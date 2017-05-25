require "rails_helper"

RSpec.describe TacosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tacos").to route_to("tacos#index")
    end


    it "routes to #show" do
      expect(:get => "/tacos/1").to route_to("tacos#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tacos").to route_to("tacos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tacos/1").to route_to("tacos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tacos/1").to route_to("tacos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tacos/1").to route_to("tacos#destroy", :id => "1")
    end

  end
end
