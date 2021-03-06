class PostsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :crate, :update, :destroy]

  def index
    sorted_posts = Post.all.order(:created_at)
    @posts = sorted_posts.page(params[:page])
    @admins = Admin.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end

  private
  def post_params
    params.require(:post).permit(
      :title, :body, :category
      )
  end

end
