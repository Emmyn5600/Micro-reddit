Rails.application.routes.draw do
  resources :post2s
  resources :commentaries
  resources :authors
  root 'post2s#index'

  resources :posts
  resources :autor
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
