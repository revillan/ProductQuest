class Api::DiscussionsController < ApplicationController

  before_action :require_logged_in

  def create
    @comment = Discussion.new(discussion_params)
    @comment.author_id = current_user.id
    if @comment.save
      @product = Product.find_by_id(@comment.product_id)
      render "api/discussions/show"
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def destroy
    @discussion = Discussion.find_by_id(params[:id])
    if @discussion.author_id == @current_user.id
      @discussion.delete
    end
  end

  private
  def discussion_params
    params.require(:discussion).permit(:body, :product_id)
  end

end
