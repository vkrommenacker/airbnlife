class LivesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_life, only: [ :show ]
  before_action :set_user, only: [:edit, :update, :destroy]


  def index
    @lives = Life.all
  end

  def show
  end

  def new
    @life = Life.new
  end

  def create
    @life = Life.new(life_params)
    @life.owner_id = current_user.id
    @life.save

    if @life.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_life
    @life = Life.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def life_params
    params.require(:life).permit(:title, :price_per_day, :description, :owner_id, :photo)
  end
end
