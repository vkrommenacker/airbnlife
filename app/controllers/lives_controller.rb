class LivesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def show
  end

  def create
  end

  def new
  end

  def index
  end
end
