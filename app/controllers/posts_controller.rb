

class PostsController < ApplicationController

#  before_action :find_post, only: [:show, :edit, :update, :destroy]
#  before_action :authenticate_user!, except: [:index, :show]

  def index
    if params[:q]
      @posts = Post.where(category_id: params[:q]).order("created_at DESC")
    else
      @posts = Post.all.order("created_at DESC")
    end
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def create
    @category = Category.find(params[:category_id])
    params.delete(:category_id)

    @post = @category.posts.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

end




