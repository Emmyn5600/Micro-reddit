class CommentsController < ApplicationController
  def show
    @comments = Comment.all
  end

  def new
    @comments = Comment.new
  end

  def edit
  end

  def create
    @comment = Comment.new

  end

  def update

      if @comment.update

      else

      end

  end

  def destroy
    @comment.destroy
  end
  
end
