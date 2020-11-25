class Api::V1::ReactionsController < Api::V1::BaseController

  def create
    @reaction = Reaction.new(reaction_params)
    if @reaction.save
      render json: { message: "fetch() OK! My my... aren't you clever" }
    else
      render_error
    end
  end

  private

  def reaction_params
    params.require(:reaction).permit(:emoji, :palmy_id)
  end

  def render_error
    render json: { errors: @reaction.errors.full_messages },
      status: :unprocessable_entity
  end
end
