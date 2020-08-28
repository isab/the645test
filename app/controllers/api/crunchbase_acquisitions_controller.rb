class Api::CrunchbaseAcquisitionsController < ApplicationController
  def index
    render json: { crunchbase_acquisitions: paginate(CrunchbaseAcquisition.all) }
  end
end