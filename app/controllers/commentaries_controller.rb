class CommentariesController < ApplicationController
  # POST /commentaries or /commentaries.json
  def create

    @post2 = Post2.find(params[:post2_id])

    redirect_to post2_path(@post2)
 
  end

  # DELETE /commentaries/1 or /commentaries/1.json
  def destroy
    @post2 = Post2.find(params[:post2_id])
    @commentary = @post2.comments.find(params[:id])
    @commentary.destroy
    redirect_to article_path(@article)
  end

  private
    # Only allow a list of trusted parameters through.
    def commentary_params
      params.require(:commentary).permit(:content, :author_id)
    end
end
