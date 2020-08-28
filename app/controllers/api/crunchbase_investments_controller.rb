class Api::CrunchbaseInvestmentsController < ApplicationController
  def index
    render json: { crunchbase_investments: paginate(CrunchbaseInvestment.all) }
  end
end