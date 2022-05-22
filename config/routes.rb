# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, skip: %i[registrations passwords]
  devise_scope :user do
    post '/signup', to: 'api/v1/registrations#create'
    post '/login', to: 'api/v1/sessions#create'
    delete '/logout', to: 'api/v1/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :geographic_icons
      resources :cities
      resources :countries
      resources :continents
    end
  end
end
