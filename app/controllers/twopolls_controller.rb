class TwopollsController < ApplicationController
  # GET /twopolls
  def index
    @twopolls = Twopoll.group(:answer).count
    render json: @twopolls
  end

  # POST /twopolls
  def create
    @twopoll = Twopoll.new(twopoll_params)

    if @twopoll.save
      render json: @twopoll, status: :created, location: @twopoll
    else
      render json: @twopoll.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def twopoll_params
      params.require(:twopoll).permit(:email, :answer)
    end
end
