Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  resources :categories
  resources :products, except: [:index] do
    resources :purchases, only: [:new, :create]
  end


  resources :users
  resources :purchases, only: [:index, :show]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
