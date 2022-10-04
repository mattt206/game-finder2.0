class BookingsController < ApplicationController

  before_action :set_bookings, only: %i[show edit update destroy]

  def new
    @videogame = Videogame.find(params[:videogame_id])
    @booking = Booking.new
  end

  def show
  end

  def create
    @videogame = Videogame.find(params[:videogame_id])
    @booking = Booking.new(bookings_params)
    @booking.user_id = current_user.id
    @booking.videogame_id = @videogame.id
    @booking.status = true
    if @booking.save
      redirect_to  videogame_path(@booking.videogame)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    @booking.destroy
    redirect_to videogames_path, status: :see_other
  end

  private

  def set_bookings
    @booking = Booking.find(params[:id])
  end

  def bookings_params
    params.require(:booking).permit(:star_date, :end_date)
  end

end
