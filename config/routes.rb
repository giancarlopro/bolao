Rails.application.routes.draw do
  resources :participacoes
  devise_for :users
  resources :boloes do
    get 'define' => 'boloes#define'
    post 'define' => 'boloes#save_definition'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
