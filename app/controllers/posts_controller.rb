class PostsController < ApplicationController

  before_action :set_find,only:[:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(4)
  end

  def new
    @post = Post.new
    @post.images.build
  end
  
  def create
    @post = Post.new(post_params)
    # @post.image = "default_icon.png"
    if @post.save
      redirect_to root_path
    else 
      flash[:alert] = "入力してください"
      render "new"

    end
  end

  def show
  end

  def edit
  end
  
  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to root_path(post.id)
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def set_find
    @post = Post.find(params[:id])
  end
end
