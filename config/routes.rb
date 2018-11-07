Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :categories
<<<<<<< HEAD
  resources :products
=======
  resources :products, except: [:index]
  resources :users
>>>>>>> 6b4498842fb4dbf7688689225298e07683e02119
  resources :purchases, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
