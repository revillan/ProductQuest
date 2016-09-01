Rails.application.routes.draw do
  root 'static_pages#root'

  namespace :api, default: { format: :json } do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :products, only: [:create, :show, :index]
  end
end
