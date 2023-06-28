class OnepollsController < ApplicationController

  # GET /onepolls
  def index
    @onepolls = Onepoll.group(:answer).count
    countone = Onepoll.count

    render json: {count: countone, onepolls: @onepolls}
  end

  # POST /onepolls
  def create
    @onepoll = Onepoll.new(onepoll_params)

    if @onepoll.save
      render json: @onepoll, status: :created, location: @onepoll
    else
      render json: @onepoll.errors, status: :unprocessable_entity
    end
  end


  private
    # Only allow a list of trusted parameters through.
    def onepoll_params
      params.require(:onepoll).permit(:email, :answer)
    end
end
