class AutorController < ApplicationController

  def index
    @autors = Autor.all
  end

  def show
    @autors = Autor.all
  end

  def new
    @autor = Autor.new
  end

  def edit
  end

  def create
    @autor = Autor.new

    if @autor.save
      redirect_to articles_url, notice: 'Article was created successfully.'
    else
      render :new
    end

  end

  def update

      if @autor.updatd
        redirect_to articles_url, notice: 'Article was updated successfully.'
      else
        render :edit
      end
    
  end

  def destroy
    @autor.destroy
  end

end
