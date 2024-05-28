# frozen_string_literal: true

Rails.application.routes.draw do
  resources :revenue_data
  resources :tickets
  resources :employees

  get '/employees/:id', to: 'employee#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  root 'pages#index'
end
