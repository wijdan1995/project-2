Rails.application.routes.draw do
  
  devise_for :users
  # devise setup
  get 'home/index'
  get "/home", to: "home#index"
  root "home#index"

  resources :projects do
    resources :tasks
  end

end
