class Api::CrunchbaseRoundsController < ApplicationController
  def index
    render json: { rounds: paginate(CrunchbaseRound.all) }
  end
end