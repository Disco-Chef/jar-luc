class PalmiesController < ApplicationController
  def index
    @palmies = Palmy.all
    @palmy = Palmy.new
  end

  def create
    @palmy = Palmy.new(palmy_params)
    if @palmy.save
      redirect_to palmies_path
    else
      render 'index'
    end
  end

  private

  def palmy_params
    params.require(:palmy).permit(:description, :author)
  end
end
