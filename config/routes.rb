Rails.application.routes.draw do
  resources :services
  resources :hours
  resources :addresses
  resources :organizations do
    post :add_address
  end
  
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
