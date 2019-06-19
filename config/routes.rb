Rails.application.routes.draw do
  
  namespace :admin do
      resources :users
      resources :projects
      resources :tasks

      root to: "users#index"
    end
  devise_for :users
  # devise setup
  get 'home/index'
  get "/home", to: "home#index"
  root "home#index"

  resources :projects do
    resources :tasks do
      member do
       patch :complete
      end
    end
  end

end
