Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :startups
    resources :jobs
    resources :people
  end
end
