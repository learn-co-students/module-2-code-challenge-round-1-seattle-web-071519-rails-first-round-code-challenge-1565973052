class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def show
    # byebug
    @heroine= Heroine.find(params[:id])
  end

  def new
    @heroine= Heroine.new
  end


  def create
    @heroine=Heroine.new(set_params)
    @heroine.save
    redirect_to heroine_path(@heroine)
  end



  private
  
  def set_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end

