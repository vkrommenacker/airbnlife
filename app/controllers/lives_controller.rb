class LivesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @lives = Life.all
  end

  def show
  end

  def new
  end

  def create
  end

end
