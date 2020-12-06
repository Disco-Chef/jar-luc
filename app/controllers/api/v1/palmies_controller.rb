class Api::V1::PalmiesController < Api::V1::BaseController
  def index
    @palmies = Palmy.all
  end

  def create
    @palmy = Palmy.new(palmy_params)
    if @palmy.save
      render json: {
        status: :created,
        message: "Facepalm succesfully created.\nThank you for your contribution!\nOne of us! One of us! One of us!"
      }
    else
      render_error
    end
  end

  private

  def palmy_params
    params.require(:palmy).permit(:description, :author)
  end

  def render_error
    render json: { errors: @palmy.errors.full_messages },
      status: :unprocessable_entity
  end
end
