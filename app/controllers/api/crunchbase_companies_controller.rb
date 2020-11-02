class Api::CrunchbaseCompaniesController < ApplicationController
  def index
    render json: { crunchbase_companies: paginate(CrunchbaseCompany.all) }
  end

  def show
    name = params[:name]
    company = CrunchbaseCompany.find_by(name: name)
    render json: { company: company }
  end
end
