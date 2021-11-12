Rails.application.routes.draw do
  devise_for :users
  resources :user
  get "/basic_details", to: "home#basic"
  # get "user", to: "home#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

end
