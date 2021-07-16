Rails.application.routes.draw do
 
  
  resources :restaurants 
  resources :recipes do
  resources :reviews, only: [:create, :update]
  end
  
  resources :users
  get "/auth/google_oauth2/callback", to: "sessions#google_omniauth"
  get "/login", to: 'sessions#login', as: 'login'
  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#logout', as: 'logout'
  get '/home', to: 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
