Rails.application.routes.draw do
  namespace :api, default: { format: :json} do
    resources :foods
    resources :users
    post '/auth/login', to: 'auth#login'
    get '/*a', to: 'application#not_found'
  end
end