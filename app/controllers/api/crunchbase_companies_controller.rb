class Api::CrunchbaseCompaniesController < ApplicationController
  before_action :allow_cross_origin

  def index
    render json: { crunchbase_companies: paginate(CrunchbaseCompany.all) }
  end

  def show
    name = params[:name]
    company = CrunchbaseCompany.find_by(name: name)
    render json: { company: company }
  end

  private

  def allow_cross_origin
    response.headers["Access-Control-Allow-Origin"] = "*"
    response.headers["Access-Control-Allow-Credentials"] = "true"
    response.headers["Access-Control-Allow-Headers"] = "accept, content-type"
  end
end
