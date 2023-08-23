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

    if params[:life][:picture_url].present?
      cloudinary_response = Cloudinary::Uploader.upload(params[:life][:picture_url].tempfile.path)
      @life.picture_url = cloudinary_response['secure_url']
    end

    if @life.save
      redirect_to root_path()
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def set_life
    @life = Life.find(params[:id])
  end

  def set_user
    @life = current_user.lives.find(params[:id])
  end

  def life_params
    params.require(:life).permit(:title, :price_per_day, :description, :picture_url, :city, :owner_id)
  end
end
