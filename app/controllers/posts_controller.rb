class PostsController < ApplicationController

  before_action :move_to_index, except: [:index, :show]
  before_action :set_find,only:[:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(4)
  end

  def new
    @post = Post.new
    @post.images.build
    @post.parts.build
  end
  
  def create
    @post = Post.new(post_params)
    # binding.pry
    if @post.save
      redirect_to root_path
    else 
      flash[:alert] = "入力してください"
      render "new"
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)    
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
    params.require(:post).permit(:title, :text, images_attributes: [:image], parts_attributes: [:name]).merge(user_id: current_user.id)
  end

  def set_find
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
