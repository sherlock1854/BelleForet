class Admin::TopicsController < ApplicationController


    before_action :authenticate_admin!


    def new
      @topic = Topic.new
    end


    def index
      @topics = Topic.all.order(created_at: :desc)
      @topic = Topic.new
    end


    def show
    end


    def edit
    end


    def update
    end


    def create
    end


    def destroy
    end





    private

        def topic_params
          params.require(:topic).permit(:title, :body, :image)
        end


end