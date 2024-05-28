# frozen_string_literal: true

Rails.application.routes.draw do
  resources :revenue_data
  resources :tickets
  resources :employees
  # get 'pages', to: 'pages#index'
  # get 'employees', to: 'employees#index'
  get 'revenue_data/update_datum', to: 'revenue_data#update_datum'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  root 'pages#index'
end
