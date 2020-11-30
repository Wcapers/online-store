Rails.application.routes.draw do
  devise_for :users
  root to: 'main#index'

  resources :product,  only: [:show]

  resources :category, only: [:show]

  resource :cart, only: %i[destroy show] do
   resources :items, only: %i[destroy create]
 end
end
