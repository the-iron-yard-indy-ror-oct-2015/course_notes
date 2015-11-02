class PostController < ApplicationController

  def index
    @post = Post.all.max_by{|p| p.created_at}
    @posts = Post.all.reject{|p| p == @post}
  end

  def show
    @post = Post.find(params[:id].to_i)
    @posts = Post.all.reject{|p| p == @post}
    render :template => "post/index.html.erb"
  end

end
