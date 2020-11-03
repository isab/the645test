Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :crunchbase_acquisitions
    resources :crunchbase_rounds
    resources :crunchbase_companies do
      get 'search', on: :collection, to: "crunchbase_companies#search"
    end
    resources :crunchbase_investments
  end
end
