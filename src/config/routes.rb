Rails.application.routes.draw do
  resources :listings
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'listings#index'
  get "/payments/success", to: "payments#success"
end