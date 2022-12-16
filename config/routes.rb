Rails.application.routes.draw do
  get 'home', to: 'products#home'
  root 'products#home', to: 'home'
  resources :products

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
