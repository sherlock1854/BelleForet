class Customer::TopicsController < ApplicationController


    def index
      @topic = Topic.new
      @topics = Topic.all.order(created_at: :desc).page(params[:page])
    end


    def show
    end


end