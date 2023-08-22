class LivesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_life, only: [ :show ]
  def index
  end

  def show

  end

  def new
  end

  def create
  end

  private

  def set_life
    @life = Life.find(params[:id])
  end
end
