class Api::JobsController < ApplicationController
  def index
    render json: { jobs: Job.all }
  end
end