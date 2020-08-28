Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :crunchbase_acquisitions
    resources :crunchbase_rounds
    resources :crunchbase_companies
    resources :crunchbase_investments
  end
end
