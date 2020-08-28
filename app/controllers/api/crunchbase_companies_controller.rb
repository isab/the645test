class Api::CrunchbaseCompaniesController < ApplicationController
  def index
    render json: { crunchbase_companies: paginate(CrunchbaseCompany.all) }
  end
end