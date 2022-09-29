class VideogamesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show]

  def new
    @videogame = Videogame.new
  end

  def create

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def delete
  end

  private

  def set_params
  end

end
