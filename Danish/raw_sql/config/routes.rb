Rails.application.routes.draw do
  # get '/customers', to: 'customers#index'
  resources :customers

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end