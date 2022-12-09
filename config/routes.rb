Rails.application.routes.draw do
 
  root 'products#index', to: 'index'
  resources :products, only: [:show, :index, :new, :create, :about, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
