class ApplicationController < ActionController::API
  def paginate(set) 
    set.paginate(page: params[:page] || 1, per_page: params[:per_page] || 25)
  end
end
