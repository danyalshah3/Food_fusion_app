Rails.application.routes.draw do
 
  
  get '/', to: 'welcome#home'
  resources :users
  resources :restaurants
  resources :recipes
  get "/auth/google_oauth2/callback", to: "sessions#google_omniauth"
  get "/login", to: 'sessions#login', as: 'login'
  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#logout', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
