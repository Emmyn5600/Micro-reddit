class CommentariesController < ApplicationController
  before_action :set_commentary, only: %i[show edit update destroy]

  # GET /commentaries or /commentaries.json
  def index
    @commentaries = Commentary.all
  end

  # GET /commentaries/1 or /commentaries/1.json
  def show; end

  # GET /commentaries/new
  def new; end

  # GET /commentaries/1/edit
  def edit; end

  # POST /commentaries or /commentaries.json
  def create
    @post2 = Post2.find(params[:post2_id])
    @commentary = @post2.commentaries.create(commentary_params)

    redirect_to post2_path(@post2)
  end

  # PATCH/PUT /commentaries/1 or /commentaries/1.json
  def update
    respond_to do |format|
      if @commentary.update(commentary_params)
        format.html { redirect_to @commentary, notice: 'Commentary was successfully updated.' }
        format.json { render :show, status: :ok, location: @commentary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentaries/1 or /commentaries/1.json
  def destroy
    @commentary.destroy
    respond_to do |format|
      format.html { redirect_to commentaries_url, notice: 'Commentary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_commentary
    @commentary = Commentary.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def commentary_params
    params.require(:commentary).permit(:content, :author_id)
  end
end
