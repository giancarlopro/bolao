Rails.application.routes.draw do
  resources :participacoes
  devise_for :users
  resources :boloes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
