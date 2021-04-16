class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comments = Comment.all
  end

  def new
    @comments = Comment.new
  end

  def edit; end

  def create
    @comment = Comment.new
  end

  def update
    return unless @comment.update
  end

  def destroy
    @comment.destroy
  end
end
