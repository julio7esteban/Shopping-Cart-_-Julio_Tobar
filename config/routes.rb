Rails.application.routes.draw do
  get 'order/index'

  get 'order/edit'

  get 'order/new'

  get 'order/show'

  

  resources :categories
  devise_for :users
  get 'home/index'

  resources :products
  resources :order_items
  resource :carts, only: [:show]

  root "home#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
