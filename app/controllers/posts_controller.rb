class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:map]

  def index
    if params[:latest]
        @posts = current_user.posts.all.latest
      elsif params[:old]
        @posts = current_user.posts.all.old
      else
        @posts = current_user.posts.all
      end
  end

  def allindex
    if params[:latest]
      @posts = Post.all.latest
    elsif params[:old]
      @posts = Post.all.old
    else
      @posts = Post.all
    end
  end

  def postindex
    @posts = Post.all
  end

  def new
    @user = current_user.id
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = '投稿を作成しました'
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = current_user.comments.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = '投稿を更新しました'
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    if @post.destroy
      flash[:notice] = '投稿を削除しました'
      redirect_to posts_path
    end
  end

  def map
    @posts = Post.all
  end

  def search
    @posts =  if params[:word]
                Post.where('airport_name LIKE ? OR prefecture LIKE ? OR city LIKE ? OR impression LIKE ?', "%#{params[:word]}%", "%#{params[:word]}%", "%#{params[:word]}%", "%#{params[:word]}%")
              elsif
                @posts.count == 0
              else
                Post.all
              end
  end

  private

  def post_params
    params.require(:post).permit(:id, :airport_name, :prefecture, :city, :impression, :image,  :latitude, :longitude).merge(user_id: current_user.id)
  end
end
