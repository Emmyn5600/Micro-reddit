class AutorController < ApplicationController
  def show
    @autors = Autor.all
  end

  def new
    @autors = Autor.new
  end

  def edit
  end

  def create
    @autor = Autor.new

  end

  def update

      if @autor.updatd

      else

      end
    
  end

  def destroy
    @autor.destroy
  end

end
