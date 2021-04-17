# frozen_string_literal: true

Rails.application.routes.draw do
  resources :authors
  root 'post2s#index'

  resources :post2s do
    resources :commentaries
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
