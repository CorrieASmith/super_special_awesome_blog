class ContentsController < ApplicationController
  def show
    @post = Post.find(params[:post_id])
    @content = Content.find(params[:id])
    redirect_to post_path(@content.post)
  end

  def new
    @post = Post.find(params[:post_id])
    @content = @post.contents.new
  end

  def create
    @post = Post.find(params[:post_id])
    @content = @post.contents.new(content_params)
    if @content.save
      redirect_to post_path(@content.post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @content = Content.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:post_id])
    @content = Content.find(params[:id])
    if @content.update(content_params)
      redirect_to post_path(@content.post)
    else
      render :edit
    end
  end

  def destroy
    @content = Content.find(params[:id])
    post_id = params[:post_id]
    @content.destroy
    redirect_to post_path(post_id)
  end

private
  def content_params
    params.require(:content).permit(:description, :done)
  end
end
