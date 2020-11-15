Rails.application.routes.draw do
  root to: 'palmies#index'
  resources :palmies, only: [ :index, :create ]
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :palmies, only: [ :index, :create ]
    end
  end
end
