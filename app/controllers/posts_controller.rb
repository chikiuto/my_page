class PostsController < ApplicationController
  before_action :ensure_admin, { only: %i[edit update destory] }

  def ensure_admin
    unless session[:user_id]
      flash[:notice] = '権限がありません'
      redirect_to('/comment')
    end
  end

  def index
    @posts = if session[:user_id]
               Post.all
             else
               Post.where(is_published: true).order(created_at: :desc)
             end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(name: params[:name], question: params[:question])
    if @post.save
      flash[:notice] = '質問を送信しました'
      redirect_to comment_path
    else
      render comment_new_path
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    redirect_to comment_path
    @post.answer = params[:answer]
    @post.published = params[:published]
    @post.save
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to comment_path
  end
end
