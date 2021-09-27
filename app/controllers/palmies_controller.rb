class PalmiesController < ApplicationController
  def index
    @reactions = ['🤦‍♂️', '😅', '😬', '¯\_(ツ)_/¯', '🤷‍♂️', '(╯°□°）╯︵ ┻━┻', '🙄', '🙈', '😩', '😫', '😐', '😑', '🤷‍♀️', '🤦‍♀️']
    @palmies = Palmy.all
    @palmy = Palmy.new
  end

  def create
    @palmy = Palmy.new(palmy_params)
    @palmy.save
    @errors_hash = @palmy.errors.messages
    redirect_to root_path(errors: @errors_hash)
  end

  private

  def palmy_params
    params.require(:palmy).permit(:description, :author)
  end
end
