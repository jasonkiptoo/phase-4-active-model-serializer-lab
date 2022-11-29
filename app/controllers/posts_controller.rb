class PostsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
# indexxx
  def index
    posts = Post.all
    render json: posts, include: ['tags', 'author', 'author.name']
  end
# showw
  def show
    post = Post.find(params[:id])
    render json: post
  end

  private

  def render_not_found_response
    render json: { error: "Post not found" }, status: :not_found
  end

end
