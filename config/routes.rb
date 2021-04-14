Rails.application.routes.draw do
  root 'autor#new'

  resources :posts
  resources :autor
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
