Rails.application.routes.draw do
  resources :services
  resources :hours
  resources :addresses
  resources :organizations
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
