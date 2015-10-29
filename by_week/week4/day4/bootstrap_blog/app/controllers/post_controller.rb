class PostController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id].to_i)
  end

end
