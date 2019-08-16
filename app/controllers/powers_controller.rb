class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    # byebug
    @power= Power.find(params[:id])
  end

end
