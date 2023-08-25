class BookingsController < ApplicationController

  def index
    # il faut recuperer l'id du current id
    # il faut retourner tous les bookings dont le renter_id = user id
    @bookings = Booking.where(renter_id: current_user.id)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.renter_id = current_user.id
    @booking.life = Life.find(params[:life_id])
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @life = Life.find(params[:life_id])
    @booking = Booking.new
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :renter_id, :life_id)
  end


end
