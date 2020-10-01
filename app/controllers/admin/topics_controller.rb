class Admin::TopicsController < ApplicationController


    before_action :authenticate_admin!


    def new
    end


    def index
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