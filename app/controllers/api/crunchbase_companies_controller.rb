class Api::CrunchbaseCompaniesController < ApplicationController
  def index
    render json: { crunchbase_companies: paginate(CrunchbaseCompany.all) }
  end

  def search
    name = params[:name]
    company = CrunchbaseCompany.where('lower(name) = ?', name.downcase).first
    render json: { company: company }
  end
end
