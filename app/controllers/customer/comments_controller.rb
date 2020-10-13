class Customer::CommentsController < ApplicationController


    def create
      topic = Topic.find(params[:topic_id])
      comment = current_customer.comments.new(comment_params)
      comment.topic_id = topic.id
      comment.save
      redirect_back(fallback_location: root_path)
    end


    def destroy
      @comment = Comment.find(params[:topic_id])
      @comment.destroy
      redirect_back(fallback_location: root_path)
    end





    private

      def comment_params
        params.require(:comment).permit(:comment)
      end


end