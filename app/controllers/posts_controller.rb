class PostsController < ApplicationController
before_action :ensure_admin, {only: [:edit, :update, :destory]}

  def ensure_admin
    if !session[:user_id]
      flash[:notice] = "権限がありません"
      redirect_to("/comment")
    end
  end

  def index
    if session[:user_id]
      @posts = Post.all
    else
      @posts = Post.where(published: 1).order(created_at: :desc)
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post=Post.new(name: params[:name], question: params[:question], published: 0)
    if @post.save
      flash[:notice] = "質問を送信しました"
      redirect_to("/comment")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    redirect_to("/comment")
    @post.answer = params[:answer]
    @post.published = params[:published]
    @post.save
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/comment")
  end
end
