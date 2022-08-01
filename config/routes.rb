Rails.application.routes.draw do
  namespace :api, default: { format: :json} do
    resources :foods
    resources :users
  end
end
