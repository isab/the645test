class Api::StartupsController < ApplicationController
  def index
    render json: { startups: Startup.all }
  end
end