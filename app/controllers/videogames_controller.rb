class VideogamesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_videogames, only: %i[show edit update destroy]

  def index
    @videogames = Videogame.all
  end

  def new
    @videogame = Videogame.new
  end

  def create
    @videogame = Videogame.new(videogame_params)
    if @videogame.save
      redirect_to users_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @videogame.update(videogame_params)
  end

  def destroy
    @videogame.destroy
    redirect_to home_path, status: :see_other
  end

  private

  def set_videogames
    @videogame = @videogame.find(params[:id])
  end

  def videogame_params
    params.require(:videogame).permit(:user_id, :title, :price, :condition, :description, :platform, :status, :photo)
  end
end
