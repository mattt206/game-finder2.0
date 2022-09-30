class VideogamesController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_videogames, only: %i[show edit update destroy]

  def index
    @videogames = Videogame.all
  end

  def new
    @videogame = Videogame.new
  end

  def create
    params["videogame"][:user_id] = current_user.id
    @videogame = Videogame.new(videogame_params)
    if @videogame.save
      redirect_to  videogames_path
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
    redirect_to videogame_path(@videogame)
  end

  def destroy
    @videogame.destroy
    redirect_to videogames_path, status: :see_other
  end

  private

  def set_videogames
    @videogame = Videogame.find(params[:id])
  end

  def videogame_params
    params.require(:videogame).permit(:user_id, :title, :price, :condition, :description, :platform, :status, :gamepicture)
  end
end
