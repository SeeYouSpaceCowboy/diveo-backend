Rails.application.routes.draw do
  post 'signup', to: 'api/v1/users#create', as: 'signup'
  post 'login', to: 'api/v1/users#login', as: 'login'

  scope module: 'api' do
    namespace :v1 do
      resources :users, only: [:index, :destroy]
      get '/user', to: 'users#show', as: 'user_show'

      resources :videos, only: [:index, :create, :destroy]
    end
  end
end
