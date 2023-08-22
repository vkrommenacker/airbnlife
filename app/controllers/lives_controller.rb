class LivesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show
  end

  def new
    @life = Life.new
  end

  def create
    @life = Life.new(life_params)
    @life.picture_url = params[:life][:picture_url].path
    if @life.save
      redirect_to life_path(@life)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def life_params
    params.require(:life).permit(:name, :price_per_day, :description, :picture_url, :city, :address, :owner_id)
  end
end
