class PostsController < ApplicationController 

  def index
    # if #if user -- user.posts else posts.all
    # end
    @posts = Post.all
    
  end

  def new
    @post = Post.create
  end

  def create
    
  end

  def show
    @post = Post.find(params[:id])

    @comments = @post.comments
  end
  
end
